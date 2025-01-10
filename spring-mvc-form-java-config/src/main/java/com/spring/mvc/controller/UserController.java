package com.spring.mvc.controller;

import com.spring.mvc.dao.UserDao;
import com.spring.mvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @GetMapping("/")
    public String showForm() {
        return "userForm";
    }

    @PostMapping("/submitForm")
    public String submitForm(@ModelAttribute User user) {
        userDao.saveUser(user);
        return "success";
    }
}
