package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	@GetMapping({"/", "/index", "/home"})
	public String homePage(Model model) {
		System.out.println("====================================5555555");
		model.addAttribute("products", productService.getAllProduct());
		return "home";
	}
	
	@GetMapping(value="/find")
	public String viewAccount(Model model) {
		return "findAccount";
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
	
	@GetMapping("/orders/manage")
	public String  orderManagement(){
		
		return "orderManagement";
	}
	
	
	@GetMapping("/orders/list")
	public String  ordersList(Model model){
		model.addAttribute("orders",orderService.findAll());
		
		return "orderList";
	}
	

	
}
