package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mvc.model.User;
import com.spring.mvc.service.UserService;

@Controller
public class FormController {
	
	@Autowired
	private UserService userService;
	
	 @RequestMapping("/")
	/* @GetMapping("/") */
	public String home(Model model) {
		/* model.addAttribute("msg", "Welcome to homepage"); */
		return "index";
	}
	
	@RequestMapping("/form")
	public String form() {
		return "form";
	}
	
	@RequestMapping(path = ("/formaction"), method = RequestMethod.POST)
	public String formPage(@ModelAttribute User user, Model model) {
		this.userService.createUser(user);
		return "success";
	}

}
