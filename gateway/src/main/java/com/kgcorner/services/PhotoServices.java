package com.kgcorner.services;

import com.kgcorner.dto.Photo;
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


    public List<Photo> getPhotos() {
        return photoServiceFeignClient.getPhotos();
    }

    public Photo getPhoto(int photoId) {
        return photoServiceFeignClient.getPhoto(photoId);
    }

    @FeignClient("photos-service")
    private static interface PhotoServiceFeignClient {

        @GetMapping("/photos")
        List<Photo> getPhotos();

        @GetMapping("/photos/{photoId}")
        Photo getPhoto(@PathVariable("photoId") int photoId);
    }
}
