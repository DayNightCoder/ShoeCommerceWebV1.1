package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import com.model.Product;
import com.model.User;
@Repository
public class ProductDAO {


	@Autowired
	private SessionFactory sessionFactory;

	public void addEmployee(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}

	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
ArrayList<Product> list  = new ArrayList<Product>();
list.addAll(sessionFactory.getCurrentSession().createQuery("from product")
				.list());
		System.out.println(list.toString());
		
		return sessionFactory.getCurrentSession().createQuery("from product")
				.list();
		
	}
	
	public Product getProductDetails(int id){
		return (Product) sessionFactory.getCurrentSession().get(
				Product.class, id);
	}
	public Product getProductReference(int id){
		return (Product) sessionFactory.openSession().load(
				Product.class, id);
	}


	
}