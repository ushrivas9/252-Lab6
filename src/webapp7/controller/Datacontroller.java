package webapp7.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import org.hibernate.cfg.Configuration;
import org.hibernate.exception.ConstraintViolationException;
//import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import testing.daysData;
import webapp7.entity.Data;
import webapp7.entity.Users;
import webapp7.service.DataService;



@Controller
@RequestMapping("/data")
public class Datacontroller {
	
	
	String username="Upmanyu";
	int week=1;
	Users user1=new Users();
	
	@Autowired 
	private DataService service;
	
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd (Model theModel) {
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Users.class).addAnnotatedClass(Data.class);
		
		daysData newEntry=new daysData();
		
		theModel.addAttribute("Elem",newEntry);
		
		return "addData";
	}
	
	
	@PostMapping("/saveData")
	public String saveEntry(@ModelAttribute("Elem") daysData newEntry) {
		
		Data entryToAdd=new Data();
		
		entryToAdd.setUser(user1);
		entryToAdd.setDate(newEntry.getDate());
		entryToAdd.setWeek(week);
		
		int weeklyExp=newEntry.getExp1()+newEntry.getExp2()+newEntry.getExp3()+newEntry.getExp4()+newEntry.getExp5()+newEntry.getExp6()+newEntry.getExp7();
		entryToAdd.setExpenditure(weeklyExp);

		int weeklyEar=newEntry.getEar1()+newEntry.getEar2()+newEntry.getEar3()+newEntry.getEar4()+newEntry.getEar5()+newEntry.getEar6()+newEntry.getEar7();
		entryToAdd.setEarning(weeklyEar);

		service.saveEntry(entryToAdd);
		return "redirect:/details/list";
	}	
	

}
