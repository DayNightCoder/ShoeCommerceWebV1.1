package com.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.ProductDAO;
import com.model.Product;
import com.model.User;
@Service
@Transactional
public class ProductService {

@Autowired
ProductDAO productDAO; 
	
	
	@Transactional
	public List<Product> getAllProducts() {
		return productDAO.getAllProducts();
	}
	
	@Transactional
	public Product getProductDetails(int id) {
		return productDAO.getProductDetails(id);
	}
	@Transactional
	public Product getProductRef(int id) {
		return productDAO.getProductReference(id);
	}

}
