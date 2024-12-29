package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;

@Controller
public class RequestParamWithBeanController {
	@RequestMapping("/rpf")
	public String modelAttribute() {
		System.out.println("reg param form running");
		return "rpf";
	}
	
	
	@RequestMapping(path="/rpfsub", method = RequestMethod.POST)
	public String formHandler(
			@RequestParam("userName") String userName, 
			@RequestParam("userEmail") String userEmail,
			@RequestParam("password") String password, 
			Model model) {
		
		User user = new User();

		user.setUserName(userName);
		user.setUserEmail(userEmail);
		user.setPassword(password);
		//now we are setting properties to user , not to model
		model.addAttribute("user", user);
		
		return "viewreqparam";
		//now we will get data on jsp like this: user.name etc
		
	}
	


}
