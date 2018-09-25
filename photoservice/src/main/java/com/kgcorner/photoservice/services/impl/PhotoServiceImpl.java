package com.kgcorner.photoservice.services.impl;

import com.kgcorner.dao.DataRepository;
import com.kgcorner.dto.Photo;
import com.kgcorner.dto.User;
import com.kgcorner.photoservice.models.PhotoModel;
import com.kgcorner.photoservice.services.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Service
public class PhotoServiceImpl implements PhotoService {

    @Autowired
    private DataRepository<PhotoModel> photoDataRepository;

    @Override
    public List<Photo> getPhotos() {
        List<PhotoModel> models = photoDataRepository.getAll(PhotoModel.class);
        return getPhotosFromModels(models);
    }

    @Override
    public Photo getPhoto(int id) {
        PhotoModel photoModel = photoDataRepository.get(PhotoModel.class, id);
        if(photoModel == null) {
            throw new IllegalArgumentException("No such feed");
        }
        return getPhotoFromModel(photoModel);
    }


    private List<Photo> getPhotosFromModels(List<PhotoModel> models) {
        List<Photo> photos = new ArrayList<>();
        for (PhotoModel model : models) {
            Photo photo = getPhotoFromModel(model);
            photos.add(photo);
        }
        return photos;
    }
    private Photo getPhotoFromModel(PhotoModel model) {
        Photo photo = new Photo();
        photo.setId(model.getId());
        photo.setCaption(model.getCaption());
        photo.setCommentsCount(model.getCommentCount());
        photo.setUploader(new User(model.getOwnerId()));
        return photo;
    }
}
