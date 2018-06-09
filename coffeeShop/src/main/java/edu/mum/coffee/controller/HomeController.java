package edu.mum.coffee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	
	@GetMapping({"/", "/index", "/home"})
	public String homePage() {
		System.out.println("====================================5555555");
		return "home";
	}

	@GetMapping({"/secure"})
	public String securePage() {
		return "secure";
	}
	
	@GetMapping({"/admin"})
	public String adminPage() {
		return "admin";
	}
	
	@GetMapping({"/order"})
	public String placeOrder(Model model) {
		
		return "order";
	}

	@GetMapping({"/user"})
	public String userPage() {
		return "user";
	}
	
	
}
