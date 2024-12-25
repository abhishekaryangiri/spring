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
	public String nikehome() {
		System.out.println("home is running");
		return "index";
	}

	/* SpringMvc0100/about */
	@RequestMapping("/about")
	public String abouthome() {
		return "about";
		}
	
	@RequestMapping("/men")
	public String menpage() {
		return "men";
	}
	
	@RequestMapping("/women")
	public String womenpage() {
		return "women";
	}
	
	@RequestMapping("/sale")
	public String salepage() {
		return "sale";
	}
	
	@RequestMapping("/kids")
	public String kidspage() {
		return "kids";
	}
}
