package com.kgcorner.photoservice.resource;

import com.kgcorner.dto.Photo;
import com.kgcorner.dto.User;
import com.kgcorner.photoservice.services.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@RestController
public class PhotoResource {

    @Autowired
    private PhotoService photoService;

    @GetMapping("/photos")
    public List<Photo> getPhotos() {
        return photoService.getPhotos();
    }

    @GetMapping("/photos/{photoId}")
    public Photo getPhoto(
            @PathVariable(name = "photoId") int id
    ) {
        return photoService.getPhoto(id);
    }
}
