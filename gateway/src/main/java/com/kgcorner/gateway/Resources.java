package com.kgcorner.gateway;

import com.kgcorner.dto.Comment;
import com.kgcorner.dto.Photo;
import com.kgcorner.dto.User;
import com.kgcorner.services.CommentServices;
import com.kgcorner.services.PhotoServices;
import com.kgcorner.services.UserServices;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@RestController
public class Resources {

    private static final Logger LOGGER = LoggerFactory.getLogger(Resources.class);

    @Autowired
    private CommentServices commentServices;

    @Autowired
    private PhotoServices photoServices;

    @Autowired
    private UserServices userServices;


    @GetMapping("/photos/{photoId}/comments")
    public List<Comment> getComment(@PathVariable("photoId") int photoId) {
        LOGGER.info("Fetching comments on photo:"+photoId);
        return commentServices.getComment(photoId);
    }

    @GetMapping("/photos")
    public List<Photo> getPhotos() {
        LOGGER.info("Fetching photos");
        return photoServices.getPhotos();
    }

    @GetMapping("/photos/{photoId}")
    public Photo getPhoto(@PathVariable("photoId") int photoId) {
        LOGGER.info("Fetching Photo:"+photoId);
        return photoServices.getPhoto(photoId);
    }

    @GetMapping("/users")
    public List<User> getUsers() {
        LOGGER.info("Fetching users");
        return userServices.getUsers();
    }

    @GetMapping("/users/{userId}")
    public User getUser(@PathVariable("userId") int userId) {
        LOGGER.info("Fetching user:"+userId);
        return userServices.getUser(userId);
    }


}
