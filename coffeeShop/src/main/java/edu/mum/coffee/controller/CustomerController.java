package edu.mum.coffee.controller;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import ch.qos.logback.core.net.SyslogOutputStream;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;

@Controller
public class CustomerController {
	
	@Autowired
	private PersonService personService;
	
	@GetMapping("/customers/manage")
	public String manageCustomers(Product product) {	
		
		return "customerManagement";
	}
	
	@GetMapping("/customer/profile")
	public String customerProfile(Product product) {	
		
		return "customerProfileAdd";
	}
	
	@PostMapping("/customer/add/profile")
	public String AddCustomer(Person person,Model model) {			
		personService.savePerson(person);
		model.addAttribute("person", person);
		return "customerAddSuccess";
	}	
	
	@GetMapping("/customers/list")
	public String customersList() {	
		
		return "customersList";
	}
	
	
	@PostMapping("/cutomers/list")
	public String getcustomerByEmail(String email,Model model) {	
		model.addAttribute("cust",personService.findByEmail(email));
		return "customerData";
	}
	

//	@ModelAttribute("customer")
//	public Person getPerson(){
//		return new Person();
//	}
	
	@GetMapping({"/user"})
	public String userPage() {
		return "user";
	}
	
	@PostMapping("/user")
	public String backToUser(){		
		return "redirect:/user";
	}
	
	@GetMapping("/user/profile")
	public String profile(Principal principal, Model model) {
		String userEmail=principal.getName();
		System.out.println("============="+ userEmail);
		List<Person> persons=personService.findByEmail(userEmail);
		Person user=null;
		for(Person person:persons){
			if(person.getEmail().equals(userEmail)){
		         user=person;
		         break;
			}
		}
		
    model.addAttribute("person",user);
		
		
		return "profile";
	}
	
	
	
	@GetMapping("/user/profile/update")
	public String updateUserProfie(){
		
		
		return "updateUserProfile";
	}
	
	@PostMapping("/user/profile/update")
	public String UpdatePersonProfile(@ModelAttribute @Valid Person person, BindingResult result, Model model){
		
		person.setEmail(person.getEmail());
		person.setEnable(true);
		
		//personService.removePerson(user);
		personService.savePerson(person);		
		return "successfulProfileUpdate";
	}
	
	@ModelAttribute("userData")
	public Person userData(Principal principal,Model model){
		
		String userEmail=principal.getName();
		List<Person> persons=personService.findByEmail(userEmail);
		Person user=null;
		for(Person person:persons){
			if(person.getEmail().equals(userEmail)){
		         user=person;
		         break;
			}
		}
		 model.addAttribute("person",user);
			
			
			return user;
	}


	
	
}
