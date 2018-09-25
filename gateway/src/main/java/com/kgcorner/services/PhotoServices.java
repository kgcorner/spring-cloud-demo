package com.kgcorner.services;

import com.kgcorner.dto.Photo;
import com.kgcorner.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Service
public class PhotoServices {

    @Autowired
    private PhotoServices.PhotoServiceFeignClient photoServiceFeignClient;

    @Autowired
    private UserServices userServices;

    public List<Photo> getPhotos() {
        List<Photo> photos = photoServiceFeignClient.getPhotos();
        for(Photo photo : photos) {
            User user = userServices.getUser(photo.getUploader().getId());
            photo.setUploader(user);
        }
        return photos;
    }

    public Photo getPhoto(int photoId) {
        return photoServiceFeignClient.getPhoto(photoId);
    }

    @FeignClient("photo-service")
    private static interface PhotoServiceFeignClient {

        @GetMapping("/photos")
        List<Photo> getPhotos();

        @GetMapping("/photos/{photoId}")
        Photo getPhoto(@PathVariable("photoId") int photoId);
    }
}
