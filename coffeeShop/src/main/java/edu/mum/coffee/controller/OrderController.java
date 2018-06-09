package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.mum.coffee.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
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
