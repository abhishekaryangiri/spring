package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	
	@RequestMapping("/rp")
	public String showFormUsingModelAttribute() {
		return "rp";
	}
	
	@RequestMapping("/form")
	public String showForm() {
		return "form";
	}
	
	@RequestMapping("/ma")
	public String modelAttribute() {
		return "ma";
	}
	

	
	@RequestMapping(path="/formsubmission", method = RequestMethod.POST)
	public String handleForm(
			@RequestParam("userName") String userName, 
			@RequestParam("userEmail") String userEmail,
			@RequestParam("password") String password, Model model)
	
	{
		System.out.println(userName + userEmail + password);
		
		
			model.addAttribute("name", userName);
			model.addAttribute("email", userEmail);
			model.addAttribute("password", password);
		
		return "view";
		
	}
	

}
