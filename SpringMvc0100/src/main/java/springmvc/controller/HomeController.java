package springmvc.controller;



import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
	
	@RequestMapping("/about")
	public String aboutMethod() {
		return "about";
	}
	
	@RequestMapping("/explang")
	public ModelAndView expressionLanguage() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("name", "Abhishek");
		modelAndView.addObject("phone", "8826930890");
		modelAndView.addObject("add", "Noida");
		
		ArrayList<String> li = new ArrayList<String>();
		li.add("Bettiah");
		li.add("Nainital");
		li.add("Gurugram");
		
		modelAndView.addObject("key", li);
		
		 LocalDateTime lt = LocalDateTime.now();
		 modelAndView.addObject("timekey", lt);
		
		modelAndView.setViewName("modelandview");
		
		
		return modelAndView;
	}
	
	@RequestMapping("/mav")
	public ModelAndView modelAndView() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("name", "Abhishek");
		modelAndView.addObject("phone", "8826930890");
		modelAndView.addObject("add", "Noida");
		
		ArrayList<String> li = new ArrayList<String>();
		li.add("Bettiah");
		li.add("Nainital");
		
		modelAndView.addObject("key", li);
		
		 LocalDateTime lt = LocalDateTime.now();
		 modelAndView.addObject("timekey", lt);
		
		modelAndView.setViewName("modelandview");
		
		
		return modelAndView;
	}
	
	@RequestMapping("/model")
	public String modelPage(Model model) {
		model.addAttribute("name", "Abhishek Giri");
		model.addAttribute("phone", "8826930890");
		
		
		ArrayList<String> infoList = new ArrayList<String>();
		
		infoList.add("Noida");
		infoList.add("Full Stack Java Developer");
		
		model.addAttribute("key", infoList);
		
		return "model";
				
	}

}
