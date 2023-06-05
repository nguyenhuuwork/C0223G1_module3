package com.example.management_user.service;

import com.example.management_user.model.User;
import com.example.management_user.repository.UserRepository;

import java.util.List;

public class UserService  implements IUserService{
    private UserRepository userRepository = new UserRepository();
    @Override
    public List<User> listUser() {
        return userRepository.listUser();
    }
}
