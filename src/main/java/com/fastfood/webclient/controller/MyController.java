package com.fastfood.webclient.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fastfood.webclient.form.Category;
import com.fastfood.webclient.form.Product;
import com.fastfood.webclient.form.Restaurant;
import com.fastfood.webclient.form.Users;
import com.fastfood.webclient.service.CategoryService;
import com.fastfood.webclient.service.ProductService;
import com.fastfood.webclient.service.RestaurantService;
import com.fastfood.webclient.service.UserService;

 
@Controller
public class MyController {
	boolean flagIn = false;
	

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService catService;
	@Autowired
	private RestaurantService restService;
	@Autowired
	private ProductService productService;
	Category category;
	
   public UserService getUserService() {
		return userService;
	}
   public CategoryService getCatService() {
		return catService;
	}


	public void setCatService(CategoryService catService) {
		this.catService = catService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public RestaurantService getRestService() {
		return restService;
	}


	public void setRestService(RestaurantService restService) {
		this.restService = restService;
	}

   @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
   public String homePage(Map<String, Object> map) {
	   String entrada ="";
	   if(flagIn){
		  //  map.put("reservationList", reservationService.listReservation(false));
	   		entrada = "homePage";
	   }else{
		   entrada = "autentic";
	   }
       return entrada;
   }
   @RequestMapping(value = {"/restaurant" }, method = RequestMethod.GET)
   public String restaurantPage(Map<String, Object> map) {
	   String entrada ="";
	   if(flagIn){
		   map.put("restaurant", new Restaurant());
	  		map.put("restaurantList", restService.listRestaurant());
	   		entrada = "restaurantPage";
	   }else{
		   entrada = "autentic";
	   }
       return entrada;
   }
   @RequestMapping(value = {"/category" }, method = RequestMethod.GET)
   public String categoryPage(Map<String, Object> map) {
	   String entrada ="";
	   if(flagIn){
		   map.put("category", new Category());
	  		map.put("categoryList", catService.listCategory());
	   		entrada = "categoryPage";
	   }else{
		   entrada = "autentic";
	   }
       return entrada;
   }
   
   @RequestMapping(value = "/addRestaurant", method = RequestMethod.POST)
 	public String addRestaurant(@ModelAttribute("restaurant")
 	Restaurant restaurant, BindingResult result) {

 	   restService.addRestaurant(restaurant);

 		return "redirect:/restaurant";
 	}
   
   @RequestMapping("/deleteRestaurant/{id_restaurant}")
 	public String deleteRestaurant(@PathVariable("id_restaurant")
 	Long id_restaurant) {

	   restService.removeRestaurant(id_restaurant);

 		return "redirect:/restaurant";
 	}
   
   
   @RequestMapping(value = { "/contactus" }, method = RequestMethod.GET)
   public String contactusPage(Model model) {
       model.addAttribute("address", "Vietnam");
       model.addAttribute("phone", "...");
       model.addAttribute("email", "...");
       return "contactusPage";
   }
   @RequestMapping(value = { "/login" }, method = RequestMethod.GET)
   public String login(Map<String, Object> map) {
       map.put("user", new Users());
       return "login";
   }
   @RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
   public String logout(HttpServletRequest request, HttpServletResponse response,Map<String, Object> map) {
	   HttpSession misession= request.getSession(true);
	   misession.invalidate();  
	   
	   map.put("user", new Users());
       flagIn = false;
       
       return "login";
   }
   
  
   /****User*****/
   
   @RequestMapping("/user")
  	public String listUser(Map<String, Object> map) {

	   String entrada ="";
	   if(flagIn){
		    map.put("user", new Users());
	  		map.put("userList", userService.listUser());
			entrada = "userList";
	   }else{
		   entrada = "autentic";
	   }
       return entrada;
       
  	}
   @RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user")
	Users user, BindingResult result) {

	   userService.addUser(user);

		return "redirect:/user";
	}
  
  @RequestMapping("/deleteUser/{userId}")
	public String deleteUser(@PathVariable("userId")
	Long userId) {

	  userService.removeUser(userId);

		return "redirect:/user";
	}
  
  /****Login****/
  
  @RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("user")
	Users user, BindingResult result) {
	  
	  HttpSession misession= request.getSession(true);
	  String entrada = "";
	  boolean isValidUser = userService.isValidUser(user.getUser(), user.getPassword());
	  if(isValidUser){
		  user = userService.getUser(user.getUser(), user.getPassword());
		  request.setAttribute("login", user);
		  misession.setAttribute("login",user);
		  entrada = "homePage";
		  flagIn = true;
	  }else{
		  request.setAttribute("message", "Invalid Credentials");
		  flagIn = false;
		  entrada = "autentic";
	  }
	  return entrada;
	}
  
  @RequestMapping(value = "/getproduct", method = RequestMethod.POST)
	public String getproduct(Map<String, Object> map,@ModelAttribute("category") Category category,
	Restaurant restaurant, BindingResult result) {
	  
	  map.put("product", new Product());
	  map.put("productList", productService.listProductbyCategory(category));
		return "productPage";
	}
 
}