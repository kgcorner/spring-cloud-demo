package com.kgcorner.userservice.services;

import com.kgcorner.dto.User;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
public interface UserService {
    List<User> getUsers();

    User getUser(int id);
}
