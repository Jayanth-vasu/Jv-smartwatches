package com.niit.shopping.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.niit.shopping.model.Cart;
import com.niit.shopping.service.ProductService;

@Controller
public class CheckoutController {

	@Autowired
	ProductService productService;
	
	
	/*@ResponseBody @RequestMapping(value = "/checkout",method=RequestMethod.POST)
	public 	String checkout(@RequestBody Cart cart, HttpSession session, Principal activeuser) {
		session.setAttribute("cartItem", productService.getCartByUser(activeuser.getName()));
		
		System.out.println(cart.getQuantity());
		
		Cart cartlist=new Cart();
		System.out.println(cart.toString());
		for(int i=0;i<productService.getCartByUser(activeuser.getName()).size();i++){
			
			productService.getCartByUser(activeuser.getName()).get(i).setQuantity(cart.getQuantity());
			
			cartlist=productService.getCartByUser(activeuser.getName()).get(i);
			
			List<Cart> cartlist=productService.getCartByUser(activeuser.getName());
			cartlist.get(i).setQuantity(quantity);
			cart=cartlist.get(i).getQuantity();
		
			
		}
		productService.updateProduct(cartlist);
		
		return "redirect:/cartcheckout";
	}*/
	
	@RequestMapping(value = "/checkout")
	public String checkout(){
		return "redirect:/cartcheckout";
	}
}
