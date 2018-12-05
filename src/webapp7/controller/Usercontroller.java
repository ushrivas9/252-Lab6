package webapp7.controller;

import java.util.List;

import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import testing.daysData;
import webapp7.entity.Data;
import webapp7.entity.Users;
import webapp7.service.UserService;



@Controller
@RequestMapping("/userpage")
public class Usercontroller {
	
	List<Users> details;
	
	@Autowired 
	private UserService service;
	
	@GetMapping("/login")
	public String loginP(@ModelAttribute("Elem1") Users newEntry) {
		
		return "index";
		
	}
	
	@PostMapping("/saveUser")
	public String saveEntry(/*@ModelAttribute("Elem1") Users newEntry*/@ModelAttribute("mapping1Form") Users newEntry,
	        final BindingResult mapping1BindingResult,
	        final Model theModel, 
	        final RedirectAttributes redirectAttributes) {
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Users.class);
		
		details=service.getDetails();
		
		for(int i=0;i<details.size();i++) {
			//check if user exists
			if(details.get(i).getUsername().equals(newEntry.getUsername())) {
				return "error-page"; 
			}		
		}
	
		service.saveEntry(newEntry);
		
		///////////////////
		
        redirectAttributes.addFlashAttribute("mapping1Form", newEntry);
		
		//////////////////
		return "redirect:/data/analytics";
		
	}

}
