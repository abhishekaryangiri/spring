package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class modelAttribute {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void showCommonMsg(Model model) {
		model.addAttribute("companyName", "StelioAI");
		model.addAttribute("tagline", "For your complete software solution");
	}
	
	@RequestMapping("/ma")
	public String mapage() {
		return "ma";
	}
	
	@RequestMapping(path="/masub", method = RequestMethod.POST)
	public String ModAtt(@ModelAttribute User user, Model model) {

		model.addAttribute("user", user);
		
		this.userService.createUser(user);
		return "maview";
		
	}

}
