package com.kgcorner.commentservice.service.impl;

import com.kgcorner.commentservice.models.CommentModel;
import com.kgcorner.commentservice.service.CommentService;
import com.kgcorner.dao.DataRepository;
import com.kgcorner.dao.Operands;
import com.kgcorner.dto.Comment;
import com.kgcorner.dto.Comment;
import com.kgcorner.dto.Photo;
import com.kgcorner.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private DataRepository<CommentModel> commentDataRepository;

    @Override
    public List<Comment> getCommentsOnPhoto(int CommentId) {
        List<Operands> operands = new ArrayList<>();
        Operands operand = new Operands(CommentId, Operands.TYPES.NUMBER, "CommentId", Operands.OPERATORS.EQ);
        List<CommentModel> commentModels = commentDataRepository.getAll(CommentModel.class, operands);
        return getCommentsFromModels(commentModels);
    }

    private List<Comment> getCommentsFromModels(List<CommentModel> models) {
        List<Comment> comments = new ArrayList<>();
        for (CommentModel model : models) {
            Comment Comment = getCommentFromModel(model);
            comments.add(Comment);
        }
        return comments;
    }
    private Comment getCommentFromModel(CommentModel model) {
        Comment comment = new Comment();
        comment.setId(model.getId());
        comment.setComment(model.getComment());
        comment.setPhoto(new Photo(model.getPhotoId()));
        comment.setUser(new User(model.getCommenterId()));
        return comment;
    }
}
