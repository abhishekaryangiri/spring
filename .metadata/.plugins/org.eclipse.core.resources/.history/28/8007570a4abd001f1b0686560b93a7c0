package mpf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import mpf.service.UserService;

@Controller
public class ForgotPasswordController {

    @Autowired
    private UserService userService;

    @GetMapping("/forgot-password")
    public String forgotPasswordPage() {
        return "forgotPassword";
    }

    @PostMapping("/reset-password")
    public String resetPassword(
            @RequestParam String mobileNumber,
            @RequestParam String favoriteTeacher,
            @RequestParam String newPassword,
            Model model) {
        if (userService.resetPassword(mobileNumber, favoriteTeacher, newPassword)) {
            model.addAttribute("success", "Password reset successfully.");
            return "login";
        }
        model.addAttribute("error", "Invalid details. Try again.");
        return "forgotPassword";
    }
}