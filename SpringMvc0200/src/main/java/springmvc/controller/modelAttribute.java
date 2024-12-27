package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;

@Controller
public class modelAttribute {
	
	@RequestMapping("/ma")
	public String mapage() {
		return "ma";
	}
	
	@RequestMapping(path="/masub", method = RequestMethod.POST)
	public String ModAtt(@ModelAttribute User user, Model model) {

		model.addAttribute("user", user);
		
		System.out.println(user);
		return "maview";
		
	}

}
