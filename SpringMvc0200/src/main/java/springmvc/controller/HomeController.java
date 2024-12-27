package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class HomeController {
	
	@RequestMapping("/")
	public String homepage() {
		return"index";
	}

	@RequestMapping("/home")
	public String mvcHome() {
		System.out.println("home is running");
		return "index";
	}
	
	
	

}
