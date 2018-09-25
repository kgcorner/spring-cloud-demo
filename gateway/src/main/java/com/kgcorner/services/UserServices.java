package com.kgcorner.services;

import com.kgcorner.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Service
@EnableFeignClients
public class UserServices {

    @Autowired
    private UserServiceFeignClient userServiceFeignClient;


    public List<User> getUsers() {
        return userServiceFeignClient.getUsers();
    }

    public User getUser(int userId) {
        return userServiceFeignClient.getUser(userId);
    }

    @FeignClient("users-service")
    private static interface UserServiceFeignClient {

        @GetMapping("/users")
        List<User> getUsers();

        @GetMapping("/users/{userId}")
        User getUser(@PathVariable("userId") int userId);
    }

}
