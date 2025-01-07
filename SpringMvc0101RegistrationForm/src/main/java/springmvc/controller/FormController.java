package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;

@Controller
public class FormController {
	
	@RequestMapping("/")
	public String homepage(Model model) {
		/* model.addAttribute("msg", "its working or not"); */
		return "index";
	}
	
	
	  @RequestMapping("/form") 
	  public String formHomepage() { 
		  return "form"; 
		  }
	 
	
	  @RequestMapping(path = "/formaction", method = RequestMethod.POST) 
	  public String formHandler(@ModelAttribute User user) { 
		  return "success"; 
		  }
	 
	 
}
