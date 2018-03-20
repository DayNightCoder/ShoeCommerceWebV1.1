package com.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.model.Cart;
import com.model.Product;
import com.model.User;
import com.service.CartService;
import com.service.ProductService;
import com.service.UserService;



@Controller
public class MainController {

	@Autowired
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	CartService cartService; 
	
	@RequestMapping("/home")
	public ModelAndView product(HttpServletRequest request, HttpServletResponse response)
	{
		
		List<Product> list = (List<Product>)productService.getAllProducts();
System.out.println(productService.getAllProducts());
		//return back to index.jsp
		ModelAndView model = new ModelAndView("home");
		model.addObject("list", list);
		model.addObject("hello", "hello sachin");
	
		
		return model;

	
	}
	
		
	@RequestMapping(value = "/ProductDetails", method = RequestMethod.GET)
	public ModelAndView productDetails(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		
		Product product=(Product) productService.getProductDetails(productId);
		Cart cart = new Cart();
		//cart.setCart_id();
		//cart.setCart_pro_id(2);
		
		//cart.setCart_size(23);
		Map<String, Integer> qtyMap= new LinkedHashMap<String, Integer>();
		for(int i=1;i<=10;i++) {
		qtyMap.put(String.valueOf(i), i);
		}
		//User user= new User();
		//user.setUser_id(2);
		//cart.setCart_user_id(2);
		//Product p1= new Product();
		//p1.setId(productId);
		cart.setProduct(productService.getProductRef(productId));
		cart.setUser(userService.getUserRef(2));
	
		System.out.println(productService.getProductRef(productId).getDescription()+" "+productService.getProductRef(productId).getName());
		
		ModelAndView model= new ModelAndView("product_detail");
		model.addObject("product1",product);
		
		model.addObject("cart",cart);
		//model.addObject("user",user);
		model.addObject("qtyMap",qtyMap);
		
		return model;
		
	}
	


	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public ModelAndView Login(HttpServletRequest request) {
		String f_name = (String)request.getParameter("f_name");
		String l_name = (String)request.getParameter("l_name");
		String email = (String)request.getParameter("email");
		String password1 = (String)request.getParameter("password1");
		String password2 = (String)request.getParameter("password2");
		ModelAndView model= new ModelAndView("details");
		
		if(userService.saveUser(new User(f_name,l_name,email,password2))) {
		System.out.println("done");
		model.addObject("product","done");
		}
		return model;
		
	}
	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public ModelAndView LoginPage(HttpServletRequest request) {
		
		ModelAndView model= new ModelAndView("registerUser");
		User user= new User();
		model.addObject("user",user);
		return model;
		
	}
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute User user) {
		if (user.getUser_id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			userService.saveUser(user);
			System.out.println("done");
		} else {
			
		}
		return new ModelAndView("redirect:/home");
	}
	@RequestMapping(value = "/updateUser", method = RequestMethod.GET)
	public ModelAndView Test(HttpServletRequest request) {
		
		ModelAndView model= new ModelAndView("updateUser");
		User user= userService.getUserDetails(2);
		model.addObject("user",user);
		return model;
		
	}
	@RequestMapping(value = "/updatingUser", method = RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute User user) {
		ModelAndView andView = null;
		if (user.getUser_id() != 0) { // if employee id is 0 then creating the
			System.out.println("url map ok");
			// employee other updating the employee
		 User u = new User(user.getUser_id(),user.getF_name(),user.getL_name(),user.getEmail(),user.getPassword());
			userService.updateUser(u);
			if(compareUsers(user.getUser_id(),user)) {
			
			System.out.println("done");
			andView= new ModelAndView("redirect:/home");
			}
		} else {
			
			andView= new ModelAndView("redirect:/");
		}
		return andView;
	}

public boolean compareUsers(int id, User user) {
	boolean flag= false;
	User u = new User(user.getUser_id(),user.getF_name(),user.getL_name(),user.getEmail(),user.getPassword());
	User user1=userService.getUserDetails(id);
	if(user1.equals(u)) {
	flag= true;
	}
		return flag;
	
}
}