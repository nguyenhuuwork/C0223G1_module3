package com.example.management_user.service;

import com.example.management_user.model.User;

import java.util.List;

public interface IUserService {
    List<User> listUser();

    void createUser(User user);

    void deleteUser(int id);

    void updateUser(User user);

    User selectById(int id);
}
