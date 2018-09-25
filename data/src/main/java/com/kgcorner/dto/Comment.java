package com.kgcorner.dto;

/**
 * Created by admin on 9/25/2018.
 */
public class Comment {
    private int id;
    private String comment;
    private Photo photo;
    private User user;


    public Comment(int id) {
        this.id = id;
    }

    public Comment() {
    }

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

    public Photo getPhoto() {
        return photo;
    }

    public void setPhoto(Photo photo) {
        this.photo = photo;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
