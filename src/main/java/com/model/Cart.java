package com.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="cart")
public class Cart implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	
	@GeneratedValue(strategy = GenerationType.AUTO)
	int cart_id;
	
	@Transient
	int cart_user_id, cart_pro_id;
	
	@OneToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="cart_pro_id")
	Product product;
	
	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}
	
	@OneToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="cart_user_id")
	User user;

	
	/**
	 * @return the checkout
	 */
	public Checkout getCheckout() {
		return checkout;
	}

	/**
	 * @param checkout the checkout to set
	 */
	public void setCheckout(Checkout checkout) {
		this.checkout = checkout;
	}

	@ManyToOne
    @JoinColumn(name="checkout_id", nullable=true)
	Checkout checkout;
	
	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart() {
		super();
	}

	public Cart(int cart_user_id, int cart_pro_id, int cart_quantity, int cart_size) {
		super();
		this.cart_user_id = cart_user_id;
		this.cart_pro_id = cart_pro_id;
		this.cart_quantity = cart_quantity;
		this.cart_size = cart_size;
	}

	@Column
	int cart_quantity, cart_size;

	public Cart(int cart_id, int cart_user_id, int cart_pro_id, int cart_quantity, int cart_size) {
		super();
		this.cart_id = cart_id;
		this.cart_user_id = cart_user_id;
		this.cart_pro_id = cart_pro_id;
		this.cart_quantity = cart_quantity;
		this.cart_size = cart_size;
	}

	/**
	 * @return the cart_id
	 */
	public int getCart_id() {
		return cart_id;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

	/**
	 * @param cart_id the cart_id to set
	 */
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	/**
	 * @return the cart_user_id
	 */
	public int getCart_user_id() {
		return cart_user_id;
	}

	/**
	 * @param cart_user_id the cart_user_id to set
	 */
	public void setCart_user_id(int cart_user_id) {
		this.cart_user_id = cart_user_id;
	}

	/**
	 * @return the cart_pro_id
	 */
	public int getCart_pro_id() {
		return cart_pro_id;
	}

	/**
	 * @param cart_pro_id the cart_pro_id to set
	 */
	public void setCart_pro_id(int cart_pro_id) {
		this.cart_pro_id = cart_pro_id;
	}

	/**
	 * @return the cart_quanitity
	 */
	public int getCart_quantity() {
		return cart_quantity;
	}

	/**
	 * @param cart_quantity the cart_quantity to set
	 */
	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}

	/**
	 * @return the cart_size
	 */
	public int getCart_size() {
		return cart_size;
	}

	/**
	 * @param cart_size the cart_size to set
	 */
	public void setCart_size(int cart_size) {
		this.cart_size = cart_size;
	}
	
	
	
}
