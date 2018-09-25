package com.kgcorner.commentservice.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by admin on 9/25/2018.
 */

@Entity
@Table(name ="comments")
public class CommentModel implements Serializable{

    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private int id;

    @Column(name="comment")
    private String comment;

    @Column(name="USER_ID")
    private int commenterId;

    @Column(name="PHOTO_ID")
    private int photoId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getCommenterId() {
        return commenterId;
    }

    public void setCommenterId(int commenterId) {
        this.commenterId = commenterId;
    }

    public int getPhotoId() {
        return photoId;
    }

    public void setPhotoId(int photoId) {
        this.photoId = photoId;
    }
}
