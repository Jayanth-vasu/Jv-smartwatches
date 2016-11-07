package com.niit.shopping.service;

import com.niit.shopping.model.UserDetails;

public interface LoginService {

	public boolean checkUser(UserDetails u);

	public String getPassword(String email);

}
