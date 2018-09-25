package com.kgcorner.services;

import com.kgcorner.dto.Comment;
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


    public Comment getComment(int commentId) {
        return commentServiceFeignClient.getComment(commentId);
    }

    @FeignClient("comments-service")
    private static interface CommentServiceFeignClient {


        @GetMapping("/photos/{photoId}/comments")
        Comment getComment(@PathVariable("photoId") int commentId);
    }
}
