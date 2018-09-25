package com.kgcorner.commentservice.service;

import com.kgcorner.dto.Comment;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
public interface CommentService {

    List<Comment> getCommentsOnPhoto(int photoId);

}
