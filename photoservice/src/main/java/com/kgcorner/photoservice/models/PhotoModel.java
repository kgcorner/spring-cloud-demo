package com.kgcorner.photoservice.models;

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
@Table(name ="photos")
public class PhotoModel implements Serializable{

    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private int id;

    @Column(name="CAPTION")
    private String caption;

    @Column(name="USER_ID")
    private int ownerId;

    @Column(name = "COMMENT_COUNT")
    private int commentCount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public int getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(int ownerId) {
        this.ownerId = ownerId;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }
}
