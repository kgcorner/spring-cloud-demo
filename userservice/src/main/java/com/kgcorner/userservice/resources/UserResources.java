package com.kgcorner.userservice.resources;

import com.kgcorner.userservice.services.UserService;
import com.kgcorner.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */

@RestController
public class UserResources {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public List<User> getUsers() {
        return userService.getUsers();
    }

    @GetMapping("/users/{userId}")
    public User getUsers(
            @RequestParam(name = "userId") int id
    ) {
        return userService.getUser(id);
    }
}
