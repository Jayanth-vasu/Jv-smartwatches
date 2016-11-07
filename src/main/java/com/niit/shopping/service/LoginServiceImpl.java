package com.niit.shopping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.dao.LoginDAO;
import com.niit.shopping.model.UserDetails;
import com.niit.shopping.service.LoginService;


	@Service
	@Transactional
	public class LoginServiceImpl implements LoginService {

		@Autowired(required=true)
		private LoginDAO ld;
		
		@Override
		public boolean checkUser(UserDetails u) {
			boolean b=false;
			b=ld.checkUser(u);
			if(b==true){
				b=true;
			}
			return b;
		}

		@Override
		public String getPassword(String email) {
			
			return ld.getPassword(email);
		}


	}

