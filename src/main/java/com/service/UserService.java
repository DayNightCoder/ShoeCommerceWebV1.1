package com.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.UserDAO;
import com.model.Product;
import com.model.User;

@Service
@Transactional
public class UserService {

	@Autowired
	UserDAO dao;
	
	@Transactional
	public boolean saveUser(User user) {
	boolean flag = false;
	
		if(dao.AddUser(user)) {
		flag= true;
	}
	return flag;
}
	@Transactional
	public User getUserDetails(int id) {
		return dao.getUserDetails(id);
	}
	@Transactional
	public User getUserRef(int id) {
		return dao.getUserReference(id);
	}
	@Transactional
	public void updateUser(User user) {
		dao.UpdateUser(user);
	}
	
}
