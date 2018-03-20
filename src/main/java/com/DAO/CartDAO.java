package com.DAO;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;
import com.model.Checkout;
import com.model.Product;
@Repository
public class CartDAO {
	@Autowired
	private SessionFactory sessionFactory;

	
	
	
	
	public boolean addToCartDAO(Cart cart) {
	
			boolean flag= false;
			cart.toString();
			if((Integer)sessionFactory.getCurrentSession().save(cart)>0) {
			//sessionFactory.getCurrentSession().saveOrUpdate(cart);
			//System.out.println(sessionFactory.getCurrentSession().save(cart).toString());
			System.out.println(cart.toString() +"done");
			flag=true;
			
			}
			
			
			
			return flag ;
			
			
			
		}
	
	
	@SuppressWarnings("unchecked")
	public ArrayList<Cart> viewCartDAO(int id) {
		
	
		ArrayList<Cart> list  = new ArrayList<Cart>();
		ArrayList<Cart> Removelist  = new ArrayList<Cart>();
		list.addAll(sessionFactory.getCurrentSession().createCriteria(Cart.class).list());
	 
		for(Cart item :list) {
			if (item.getUser().getUser_id()!=id||item.getCheckout()!=null) {
				Removelist.add(item);
								
			}
			
			System.out.println(item.toString());
			
			
		}
		list.removeAll(Removelist);
		
		
		
		return list ;
		
		
		
	}
	public boolean deleteCartDAO(int id) {
		boolean flag= false;
		Cart cart=(Cart) sessionFactory.getCurrentSession().get(Cart.class,id);
		sessionFactory.getCurrentSession().delete(cart);
		if(sessionFactory.getCurrentSession().get(Cart.class, id)==null) {
			System.out.println("deleted "+id);
			flag = true;
			
		}
		else {
			System.out.println("not deleted "+ sessionFactory.getCurrentSession().get(Cart.class,id).toString());
			
		}
		return flag;
	}
	
	public boolean updateCartDAO(Cart cart) {
		boolean flag= false;
		sessionFactory.getCurrentSession().update(cart);
		
		if(sessionFactory.getCurrentSession().get(Cart.class, cart.getCart_id()).equals(cart)) {
			System.out.println("updated "+cart.getCart_id());
			flag = true;
			
		}
		else {
			System.out.println("not updated "+ sessionFactory.getCurrentSession().get(Cart.class,cart.getCart_id()).toString());
			
		}
		return flag;
	}
	public boolean mergeCartDAO(Cart cart) {
		boolean flag= false;
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		
		if(sessionFactory.getCurrentSession().get(Cart.class, cart.getCart_id()).equals(cart)) {
			System.out.println("updated "+cart.getCart_id());
			flag = true;
			
		}
		else {
			System.out.println("not updated "+ sessionFactory.getCurrentSession().get(Cart.class,cart.getCart_id()).toString());
			
		}
		return flag;
	}
	
	@SuppressWarnings("unchecked")
	public Cart getCartItemDAO(int id) {
		
	

		
		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, id) ;
		
		
		
	}
	
	public boolean checkOut(Checkout checkout) {
		
		boolean flag = false;
		if((Integer)sessionFactory.getCurrentSession().save(checkout)>0) {
			//sessionFactory.getCurrentSession().saveOrUpdate(cart);
			//System.out.println(sessionFactory.getCurrentSession().save(cart).toString());
			System.out.println(checkout.toString() +"done");
			flag=true;
			
			}
			
			
			
			return flag ;
			
			
			
	}
public int SaveAndGetCheckOutID(Checkout checkout) {
		int x;
		//boolean flag = false;
		x=(Integer)sessionFactory.getCurrentSession().save(checkout);
		if(x>0) {
			//sessionFactory.getCurrentSession().saveOrUpdate(cart);
			//System.out.println(sessionFactory.getCurrentSession().save(cart).toString());
			System.out.println(checkout.toString() +"done");
			
			
			}
			
			
			
			return x ;
			
			
			
	}
@SuppressWarnings("unchecked")
public Checkout getCheckoutDAO(int id) {
	


	
	return (Checkout) sessionFactory.getCurrentSession().get(Checkout.class, id) ;
	
	
	
}
}
