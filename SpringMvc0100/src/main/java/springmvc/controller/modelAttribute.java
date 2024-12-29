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
	public String mapage(Model model) {
		//to show msg on page
		/*
		 * model.addAttribute("hdr", "Must fill all field!");
		 * model.addAttribute("description","User registration form");
		 */
		return "ma";
	}
	
	@ModelAttribute
	public void commonDataForMsg(Model model) {
		//to show msg on page: now no need to write in every method seprately/must use @MA anno
		model.addAttribute("hdr", "Must fill all field!");
		model.addAttribute("description","User registration form");
	}
	
	
	@RequestMapping(path="/masub", method = RequestMethod.POST)
	public String ModAtt(@ModelAttribute User user, Model model) {

		//to show msg on page

		/* model.addAttribute("user", user); */

		/*
		 * model.addAttribute("hdr", "Must fill all field!");
		 * model.addAttribute("description","User registration form");
		 */

		
		return "maview";
		
		/* kya kiya modelAttribute ne:
		 * 
		 *  1. @RequestParam wala kaam kar diya
		 *  2. User user = new User() ; user.setAtt ..: jo obj hamne banaye they wsko v isne bana diya
		 *  3. model.addAttributw("user", user); : model me jo data set kr rahe the usko v isne set kr diya
		 *  
		 *  */
	}

}
