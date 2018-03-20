package com.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;
import com.model.User;

@Repository
public class UserDAO {
@Autowired
SessionFactory sessionFactory; 	
	
	public Boolean AddUser(User user) {
		boolean flag= false;
	//	System.out.println(sessionFactory.getCurrentSession().save(user));
		if((Integer)sessionFactory.getCurrentSession().save(user)>0) {
		System.out.println(user.toString() +"done");
		flag=true;
		}
		
		
		
		return flag ;
		
		
		
	}
	
	public User getUserDetails(int id){
		return (User) sessionFactory.getCurrentSession().get(
				User.class, id);
	}
	public User getUserReference(int id){
		return (User) sessionFactory.getCurrentSession().get(
				User.class, id);
	}


	public void UpdateUser(User user) {
		//boolean flag= false;
	//	System.out.println(sessionFactory.getCurrentSession().save(user));
		sessionFactory.getCurrentSession().update(user);
		
	
		
		
	}
}
