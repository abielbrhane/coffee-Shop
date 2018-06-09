package edu.mum.coffee.controller;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("/products/list")
	public String getAllProducts(Model model) {
		model.addAttribute("products", productService.getAllProduct());
		return "productList";
	}

	@GetMapping("/products/manage")
	public String productUpdate() {

		return "editProduct";
	}

	@GetMapping("/product/create")
	public String addProduct(Model model) {
		return "createProduct";
	}

	@PostMapping("/product/save")
	public String saveProduct(@ModelAttribute("product") Product product, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "createProduct";
		}
		productService.save(product);
		return "successfulSave";

	}


//	@GetMapping("/product/delete/{id}")
//	public String removeProduct(@PathVariable int id,Model model) {
//		System.out.println("============================"+ " " + id);
//		return "removeProduct";
//	}
	
	@GetMapping("/product/delete/{id}")
	public String DeleteProduct(@PathVariable int id,Model model) {        
		System.out.println("============================"+ " " + id);
		Product product=productService.getProduct(id);
		productService.delete(product);
		return "successfulRemove";
	}

}
