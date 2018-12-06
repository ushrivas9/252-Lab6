package webapp7.controller;

import java.util.List;

import org.hibernate.cfg.Configuration;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import testing.daysData;
import webapp7.entity.Data;
import webapp7.entity.Users;
import webapp7.service.DataService;
import webapp7.service.UserService;



@Controller
@RequestMapping("/userpage")
public class Usercontroller {
	
	List<Users> details;
	
	@Autowired 
	private UserService service;
	
	@Autowired
	private DataService service2;
	
	@GetMapping("/login")
	public String loginP(@ModelAttribute("Elem1") Users newEntry) {
		
		return "index";
		
	}
	
	@PostMapping("/saveUser1")
	public String creatAcc(@ModelAttribute("Elem1") Users newEntry,
	        final BindingResult mapping1BindingResult,
	        final Model theModel, 
	        final RedirectAttributes redirectAttributes) {
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Users.class);
		
		details=service.getDetails();
		
		for(int i=0;i<details.size();i++) {
			//check if user exists
			if(details.get(i).getUsername().equals(newEntry.getUsername())) {
				return "error_exists";
			}
		}
	
		service.saveEntry(newEntry);

		redirectAttributes.addFlashAttribute("Elem1", newEntry);
		
		return "redirect:/data/analytics";
		
		
	}
	
	@PostMapping("/saveUser")
	public String saveEntry(/*@ModelAttribute("Elem1") Users newEntry*/@ModelAttribute("Elem1") Users newEntry,
	        final BindingResult mapping1BindingResult,
	        final Model theModel, 
	        final RedirectAttributes redirectAttributes) {
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Users.class);
		
		details=service.getDetails();
		
		int flag=0;	//username not found
		for(int i=0;i<details.size();i++) {
			//check if user exists
			if(details.get(i).getUsername().equals(newEntry.getUsername())) {
				flag=1;	//username found
				if(!details.get(i).getPassword().equals(newEntry.getPassword())) {
					return "error_username"; 
				}
			}
		}
	
		if(flag==1) {
			service.saveEntry(newEntry);

			redirectAttributes.addFlashAttribute("Elem1", newEntry);
		
			return "redirect:/data/analytics";
		}
		else {
			return "error_nouser";
		}
		
	}
	
	
	@GetMapping("/delete")
	public String deleteEntry(@RequestParam("rId1") String id1, Model theModel) {
		
		service2.deleteEntry(id1);
		
		try {
			service.deleteEntry(id1);
		}
		catch(ConstraintViolationException e) {
			
			return "redirect:/userpage/login";
		}
		
		return "redirect:/userpage/login";
		
	}
	
	

}
