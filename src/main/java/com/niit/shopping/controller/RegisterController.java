/*package com.niit.shopping.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopping.dao.RegisterDAO;
import com.niit.shopping.model.UserDetails;
import com.niit.shopping.service.RegisterService;

@Controller
public class RegisterController {
	@Autowired(required = true)
	UserDetails userDetails;

	@Autowired
	RegisterDAO registerDAO;

	@Autowired
	RegisterService regser;

	@ModelAttribute("userform")
	public UserDetails getob() {
		return new UserDetails();
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("userDetails", userDetails);
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute UserDetails userDetails,BindingResult result) {
		if(result.hasErrors())
		{
			ModelAndView model =new ModelAndView("register");
			return model;
		}
		regser.saveOrUpdate(userDetails);
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
}
*/