package com.niit.shopping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.dao.RegisterDAO;
import com.niit.shopping.model.UserDetails;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
	
	@Autowired RegisterDAO registerDAO;
	
	public void saveOrUpdate(UserDetails userDetails){
		
		registerDAO.saveOrUpdate(userDetails);
	}

	@Override
	public UserDetails getUserByUsername(String user_firstname) {
		
		return registerDAO.getUserByUsername(user_firstname);
	}
}
