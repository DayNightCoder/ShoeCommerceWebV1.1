package com.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.CartDAO;
import com.DAO.UserDAO;
import com.model.Cart;
import com.model.User;
import com.model.Checkout;
@Service
@Transactional
public class CartService {

	@Autowired
	CartDAO dao;
	
	@Transactional
	public boolean addToCart(Cart cart) {
	boolean flag = false;
		if(dao.addToCartDAO(cart)) {
		flag= true;
	}
	return flag;
}
	
	@Transactional
	public ArrayList<Cart> viewCart(int id) {
	//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
	return dao.viewCartDAO(id);
}
	
	
	@Transactional
	public boolean deleteCart(int id) {
		//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
		return dao.deleteCartDAO(id);
	}
	@Transactional
	public boolean updateCart(Cart cart) {
		//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
		return dao.updateCartDAO(cart);
	}
	@Transactional
	public Cart getCartItem(int id) {
		//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
		return dao.getCartItemDAO(id);
	}
	@Transactional
	public boolean Checkout (Checkout checkout) {
		//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
		return dao.checkOut(checkout);
	}
	public int SaveAndGetCheckoutId(Checkout checkout) {
		
		return dao.SaveAndGetCheckOutID(checkout);
	}

	@Transactional
	public Checkout getCheckout(int id) {
		//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
		return dao.getCheckoutDAO(id);
	}
	@Transactional
	public boolean mergeCart(Cart cart) {
		//ArrayList<Cart> arrayList = new  ArrayList<Cart>();
		return dao.mergeCartDAO(cart);
	}
	
}
