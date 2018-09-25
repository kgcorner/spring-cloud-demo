package com.kgcorner.photoservice.services;

import com.kgcorner.dto.Photo;
import com.kgcorner.photoservice.models.PhotoModel;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
public interface PhotoService {

    List<Photo> getPhotos();

    Photo getPhoto(int id);
}
