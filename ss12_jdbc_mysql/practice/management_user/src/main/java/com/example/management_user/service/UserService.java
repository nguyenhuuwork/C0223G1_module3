package com.example.management_user.service;

import com.example.management_user.model.User;
import com.example.management_user.repository.UserRepository;

import java.util.List;

public class UserService implements IUserService {
    UserRepository userRepository = new UserRepository();

    @Override
    public List<User> listUser() {
        return userRepository.displayUser();
    }

    @Override
    public void createUser(User user) {
        userRepository.createUser(user);
    }

    @Override
    public void deleteUser(int id) {
        userRepository.deleteUser(id);
    }

    @Override
    public void updateUser(User user) {
        userRepository.updateUser(user);
    }

    @Override
    public User selectById(int id) {
      return userRepository.selectById(id);
    }
}
