package com.kgcorner.userservice.services.impl;

import com.kgcorner.userservice.models.UserModel;
import com.kgcorner.userservice.services.UserService;
import com.kgcorner.dao.DataRepository;
import com.kgcorner.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 9/25/2018.
 */
@Service
public class UserServicesImpl implements UserService {

    @Autowired
    private DataRepository<UserModel> userDataRepository;

    @Override
    public List<User> getUsers() {
        List<UserModel> userModels = userDataRepository.getAll(UserModel.class);
        return getUsersFromModels(userModels);
    }


    @Override
    public User getUser(int id) {
        return getUserFromModel(userDataRepository.get(UserModel.class, id));
    }

    private List<User> getUsersFromModels(List<UserModel> models) {
        List<User> users = new ArrayList<>();
        for (UserModel model : models) {
            User user = getUserFromModel(model);
            users.add(user);
        }
        return users;
    }
    private User getUserFromModel(UserModel model) {
        User user = new User();
        user.setId(model.getId());
        user.setName(model.getName());
        return user;
    }
}
