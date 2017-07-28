package com.cub_navigator.webclient.controller;

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
import com.cub_navigator.webclient.form.Category;
import com.cub_navigator.webclient.form.Product;
import com.cub_navigator.webclient.form.Users;
import com.cub_navigator.webclient.service.CategoryService;
import com.cub_navigator.webclient.service.ProductService;
import com.cub_navigator.webclient.service.UserService;

 
@Controller
public class MyController {
	boolean flagIn = false;
	

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService catService;
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
   
   @RequestMapping(value = {"/dw_cub" }, method = RequestMethod.GET)
   public String dw_cub_Page(Map<String, Object> map) {
	   String entrada ="";
	   if(flagIn){
		  // map.put("restaurant", new Restaurant());
	  		//map.put("restaurantList", restService.listRestaurant());
	   		entrada = "dw_cub_Page";
	   }else{
		   entrada = "autentic";
	   }
       return entrada;
   }
   @RequestMapping(value = {"/dw_analytics" }, method = RequestMethod.GET)
   public String dw_analytics_Page(Map<String, Object> map) {
	   String entrada ="";
	   if(flagIn){
		  // map.put("restaurant", new Restaurant());
	  		//map.put("restaurantList", restService.listRestaurant());
	   		entrada = "dw_analytics_Page";
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
	public String getproduct(Map<String, Object> map,@ModelAttribute("category") Category category, BindingResult result) {
	  
	  map.put("product", new Product());
	  map.put("productList", productService.listProductbyCategory(category));
		return "productPage";
	}
  
  @RequestMapping(value = { "/enter_user" }, method = RequestMethod.GET)
  public String enter_user(Map<String, Object> map) {
      map.put("user", new Users());
      return "signup";
  }
  
  /****New User*****/
  
  @RequestMapping("/createUser")
 	public String createUser(Map<String, Object> map) {

	   String entrada ="";
	   map.put("user", new Users());
	   entrada = "createUser";
	 
      return entrada;
      
 	}
  
}