package edu.mum.coffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;
@Controller
@RestController
public class RESTController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private PersonService personService;
	@Autowired
	private OrderService orderService;
	
	
	//*** REST Controller for Product Services ***
	//get products in JSON format
	@GetMapping(path="/products", produces="application/json")
	public List<Product> getAllProducts(){		
		return productService.getAllProduct();		
	}
	
	//create products from JSON request body
	@PostMapping(path="/products/create",consumes="application/json",
			produces="application/json")	
	public String addProduct(@RequestBody Product product){
		productService.save(product);
		return "ok";
	}
	
	//delete product 
	@DeleteMapping(path="/products/remove",consumes={"application/xml","application/json"},
			produces="application/json")
	public String removeProduct(@RequestBody Product product){	
		productService.delete(product);
		return "ok";
	}
	
	
  //*** REST Controller for Person Services ***
  //get list of person by email
  @GetMapping(path="/persons")
  public List<Person> getPersons(@RequestParam("email") String email){	  
	  return personService.findByEmail(email);
      }
  
  //get person by id from the path
  @GetMapping(path="/persons/{id}")
  public Person getPersons(@PathVariable Long id){	
	  System.out.println("=========================="+ " "+ id);
	  return personService.findById(id);
      }
  
  @PostMapping(path="/persons/{id}")
  public Person getPerson(@RequestBody Long id){	
	  System.out.println("=========================="+ " "+ id);
	  return personService.findById(id);
      }
	
  //add person 
  @PostMapping(path="/persons/add")
  public String  addPerson(@RequestBody Person person){	  
	  personService.savePerson(person);
	  return "ok";
      }
  
  //delete person
  @DeleteMapping(path="/persons/remove")
  public String  removePerson(@RequestBody Person person){	  
	  personService.removePerson(person);
	  return "ok";
      }
  

  //*** REST Controller for Order Services ***
  //get list of order
  @GetMapping("/orders")
  public List<Order> getOrders(){
	  return orderService.findAll(); 
  }
  
  // add order
  @PostMapping("/orders/add")
  public String addOrder(@RequestBody Order order){
	  orderService.save(order);
	  return "ok";
  } 
  
  
}