package com.niit.shopping.service;

import com.niit.shopping.model.UserDetails;

public interface RegisterService {
	

	public void saveOrUpdate(UserDetails userDetails);
	public UserDetails getUserByUsername(String user_firstname);
	
}
