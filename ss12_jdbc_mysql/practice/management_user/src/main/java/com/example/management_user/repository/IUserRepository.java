package com.example.management_user.repository;

import com.example.management_user.model.User;

import java.util.List;

public interface IUserRepository {
    List<User> displayUser();

    void createUser(User user);

    void deleteUser(int id);

    void updateUser(User user);

    User selectById(int id);
}
