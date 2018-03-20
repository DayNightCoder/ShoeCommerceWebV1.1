package com.controller;

import java.util.List;
import java.util.zip.CheckedOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Cart;
import com.model.CartView;
import com.model.Checkout;
import com.model.Product;
import com.model.User;
import com.service.CartService;
import com.service.ProductService;
import com.service.UserService;

@Controller
public class CartController {

	@Autowired
	ProductService productService;
	
	@Autowired
	CartService cartService;

	@Autowired
	UserService userService; 
	
	@RequestMapping(value="/addToCart", method = RequestMethod.GET)
	public ModelAndView addToCart(@ModelAttribute Cart cart) {
		System.out.println("url mapping ok");
		
		if (cart.getCart_id()==0) {
			System.out.println("cart_id is zero");
			// if employee id is 0 then creating the
			// employee other updating the employee
			if(cartService.addToCart(cart)) {
			System.out.println("done");
				} else {
			System.out.println("add to cart: fail");
		}
		}
		return new ModelAndView("redirect:/home");
	}

	
	
	
	
	@RequestMapping(value="/viewCart", method = RequestMethod.GET)
	public ModelAndView viewCart(HttpServletRequest request) {
		System.out.println("url mapping ok");
		int id = Integer.parseInt(request.getParameter("id"));
		CartView cartView = new CartView();
		cartView.setFormList(cartService.viewCart(id));
		
		ModelAndView view=  new ModelAndView("cart");
		view.addObject("list",cartService.viewCart(id));
		view.addObject("formList",cartView);
		return view;
	}	
	@RequestMapping(value="/deleteCart", method = RequestMethod.GET)
	public ModelAndView deleteCart(HttpServletRequest request) {
		System.out.println("url mapping ok");
		int id = Integer.parseInt(request.getParameter("id"));
		
		ModelAndView view=  new ModelAndView("cart");
		if(cartService.deleteCart(id)) {
			view.addObject("deleted","deleted");
		
		}
		return view;
		
	}	
	@RequestMapping(value="/updateCart", method = RequestMethod.GET)
	public ModelAndView updateCart(HttpServletRequest request) {
		System.out.println("url mapping ok");
		int id = Integer.parseInt(request.getParameter("id"));
		int qty = Integer.parseInt(request.getParameter("qty"));
		Cart cart= cartService.getCartItem(id);
cart.setCart_quantity(qty);
		ModelAndView view=  new ModelAndView("cart");
		if(cartService.updateCart(cart)) {
			//view.addObject("deleted","deleted");
		System.out.println("updated "+ cartService.getCartItem(id).getCart_id() +" to "+cartService.getCartItem(id).getCart_quantity());
		}
		return view;
		
	}	
	
	@RequestMapping(value="/confirmPurchase", method = RequestMethod.POST)
	public ModelAndView confirm(HttpServletRequest request) {
		System.out.println("url mapping ok");
		Checkout checkout = new Checkout();
		checkout.setUser((User)userService.getUserRef(Integer.parseInt(request.getParameter("id"))));
		checkout.setFname(request.getParameter("Fname"));
		checkout.setLname(request.getParameter("Lname"));
		checkout.setEmail(request.getParameter("Email"));
		checkout.setTel(request.getParameter("Tel"));
		checkout.setAddress(request.getParameter("add1") +" "+request.getParameter("add2")+" "+request.getParameter("add3")+" "+request.getParameter("add4"));
		
		//checkout.setUser(userService.getUserRef(2));
		checkout.setCartItems(cartService.viewCart(Integer.parseInt(request.getParameter("id"))));
		if (checkout.getCheckout_id()==0) {
			//System.out.println("cart_id is zero");
			// if employee id is 0 then creating the
			// employee other updating the employee
			int x=cartService.SaveAndGetCheckoutId(checkout);
			System.out.println("################### checkout ID "+x);
			if(x>0) {
				for(Cart cart:cartService.viewCart(Integer.parseInt(request.getParameter("id"))) ) {
					cart.setCheckout((Checkout)cartService.getCheckout(x));
					cartService.mergeCart(cart);
					System.out.println("~~~~~~~"+ ((Checkout)cartService.getCheckout(x)).getCartItems().size());
				}
			System.out.println("done");
				} else {
			System.out.println("checkout: fail");
		}
		}
		return new ModelAndView("redirect:/home");
	}

	@RequestMapping(value="/checkout", method = RequestMethod.GET)
	public ModelAndView checkout(HttpServletRequest request) {
		System.out.println("url mapping ok");
		int id = Integer.parseInt(request.getParameter("id"));
		User user= userService.getUserRef(2);
		Checkout checkout = new Checkout();
		checkout.setUser(userService.getUserRef(2));
		checkout.setCartItems(cartService.viewCart(id));
		
		ModelAndView view=  new ModelAndView("checkout");
		//view.addObject("list",cartService.viewCart(id));
		view.addObject("checkout",checkout);
		view.addObject("user",user);
		return view;
	}	

}
