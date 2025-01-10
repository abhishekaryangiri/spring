package com.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.mvc.dao.UserDao;
import com.spring.mvc.model.User;

@Service
public class UserService {
    @Autowired
    private UserDao userDao; // Inject UserDao

    public void saveUser(User user) {
        userDao.saveUser(user); // Use the UserDao to save the user
    }
}

