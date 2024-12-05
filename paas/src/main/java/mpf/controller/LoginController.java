package mpf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import mpf.entity.User;
import mpf.service.UserService;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String mobileNumber, @RequestParam String password, Model model) {
        User user = userService.validateUser(mobileNumber, password);
        if (user != null) {
            model.addAttribute("user", user);
            return "welcome";
        }
        model.addAttribute("error", "Invalid credentials");
        return "login";
    }
}
