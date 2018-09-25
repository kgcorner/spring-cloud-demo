package com.kgcorner.dto;

import java.io.Serializable;

/**
 * Created by admin on 9/24/2018.
 */

public class User implements Serializable {
    private int id;
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
