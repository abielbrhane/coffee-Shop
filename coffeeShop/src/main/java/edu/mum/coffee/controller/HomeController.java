package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import edu.mum.coffee.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping({"/", "/index", "/home"})
	public String homePage(Model model) {
		System.out.println("====================================5555555");
		model.addAttribute("products", productService.getAllProduct());
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

	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
//	@GetMapping("/login")
//	public String login() {
//		return "thymeleaf/login";
//	}
	

	
}
