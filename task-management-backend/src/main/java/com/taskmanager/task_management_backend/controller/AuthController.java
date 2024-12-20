package com.taskmanager.task_management_backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.taskmanager.task_management_backend.dto.LoginRequest;
import com.taskmanager.task_management_backend.dto.RegisterRequest;
import com.taskmanager.task_management_backend.services.JwtUtil;
import com.taskmanager.task_management_backend.services.UserService;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
    @Autowired
    private UserService userService;

    @Autowired
    private JwtUtil jwtUtil;

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody RegisterRequest request) {
        userService.registerUser(request.getEmail(), request.getPassword());
        return ResponseEntity.ok("User registered successfully");
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest request) {
        userService.authenticate(request.getEmail(), request.getPassword());
        String token = jwtUtil.generateToken(request.getEmail());
        return ResponseEntity.ok(token);
    }
}
