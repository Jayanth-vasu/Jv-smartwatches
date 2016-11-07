package com.niit.shopping.dao;

import com.niit.shopping.model.UserDetails;

public interface RegisterDAO {

	public void saveOrUpdate(UserDetails userDetails);

	public UserDetails getUserByUsername(String user_firstname);

}
