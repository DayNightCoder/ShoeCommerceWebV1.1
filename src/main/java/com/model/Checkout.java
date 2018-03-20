package com.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="Checkout")
public class Checkout implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	

	public Checkout(User user, int total, String fname, String lname, String address, String tel,
			String email, String notes) {
		super();
		this.user = user;
		
		this.total = total;
		Fname = fname;
		Lname = lname;
		Address = address;
		Tel = tel;
		Email = email;
		Notes = notes;
	}
	

	/**
	 * 
	 */
	public Checkout() {
		super();
	}


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int checkout_id;
	 
	
	@OneToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="checkout_user_id")
	User user;
	
	
	@OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.EAGER,
            mappedBy = "checkout")
	List<Cart> CartItems = new ArrayList<Cart>();
	
	
	/**
	 * @return the cartItems
	 */
	public List<Cart> getCartItems() {
		return CartItems;
	}

	/**
	 * @param cartItems the cartItems to set
	 */
	public void setCartItems(List<Cart> cartItems) {
		CartItems = cartItems;
	}

	@Column
	int total;
	
	@Column
	String Fname,Lname,Address,Tel,Email;
	
	@Transient
	String Notes;

	/**
	 * @return the checkout_id
	 */
	public int getCheckout_id() {
		return checkout_id;
	}

	/**
	 * @param checkout_id the checkout_id to set
	 */
	public void setCheckout_id(int checkout_id) {
		this.checkout_id = checkout_id;
	}

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
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}

	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}

	/**
	 * @return the fname
	 */
	public String getFname() {
		return Fname;
	}

	/**
	 * @param fname the fname to set
	 */
	public void setFname(String fname) {
		Fname = fname;
	}

	/**
	 * @return the lname
	 */
	public String getLname() {
		return Lname;
	}

	/**
	 * @param lname the lname to set
	 */
	public void setLname(String lname) {
		Lname = lname;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return Address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		Address = address;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return Tel;
	}

	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		Tel = tel;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return Email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		Email = email;
	}

	/**
	 * @return the notes
	 */
	public String getNotes() {
		return Notes;
	}

	/**
	 * @param notes the notes to set
	 */
	public void setNotes(String notes) {
		Notes = notes;
	}
	
	
	
}