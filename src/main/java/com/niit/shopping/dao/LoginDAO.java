package com.niit.shopping.dao;

import com.niit.shopping.model.UserDetails;

public interface LoginDAO {

	public boolean checkUser(UserDetails u);

	public String getPassword(String email);

}
