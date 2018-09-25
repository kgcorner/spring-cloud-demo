package com.kgcorner.services;

import com.kgcorner.dto.Comment;
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
public class CommentServices {

    @Autowired
    private CommentServices.CommentServiceFeignClient commentServiceFeignClient;

    @Autowired
    private UserServices userServices;

    public List<Comment> getComment(int photoId) {
        List<Comment> comments = commentServiceFeignClient.getComment(photoId);
        for(Comment comment : comments) {
            User user = userServices.getUser(comment.getUser().getId());
            comment.setUser(user);
        }
        return comments;
    }

    @FeignClient("comments-service")
    private static interface CommentServiceFeignClient {
        @GetMapping("/photos/{photoId}/comments")
        List<Comment> getComment(@PathVariable("photoId") int commentId);
    }
}
