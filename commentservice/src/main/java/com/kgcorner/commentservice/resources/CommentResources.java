package com.kgcorner.commentservice.resources;

import com.kgcorner.commentservice.service.CommentService;
import com.kgcorner.dto.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@RestController
public class CommentResources {

    @Autowired
    private CommentService commentService;

    @GetMapping("/photos/{photoId}/comments")
    public List<Comment> getCommentsOnPhoto(@PathVariable("photoId") int photoId) {
        return commentService.getCommentsOnPhoto(photoId);
    }
}
