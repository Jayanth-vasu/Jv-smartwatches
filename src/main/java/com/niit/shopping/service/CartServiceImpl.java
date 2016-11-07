package com.niit.shopping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.dao.CartDAO;
import com.niit.shopping.model.Cart;

@Service
@Transactional
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO cartDAO;
	
	@Override
	public void addCartProduct(Cart cart) {
		cartDAO.addCartProduct(cart);
		
	}

	@Override
	public List<Cart> getCartByUser(String username) {
		
		return cartDAO.getCartByUser(username);
	}

	@Override
	public List<Cart> getTotalPrice(String username) {
		
		return cartDAO.getTotalPrice(username);
	}

	@Override
	public void removeCartProduct(int cart_id) {
		
		cartDAO.removeCartProduct(cart_id);
	}
	
	@Override
	public void clearall(String username) {
		cartDAO.clearall(username);
		
	}

	@Override
	public boolean checkProduct(Cart cart) {
		boolean check=false;
	    check=cartDAO.checkProduct(cart);
	    if(check==true){
	    	check=true;
	    }
	    return check;
	}
	
	@Override
	public int cartNumber(String username) {
		
		return cartDAO.cartNumber(username);
	}
	
	@Override
	public Cart getCartByUsername(String username) {
		
		return cartDAO.getCartByUsername(username);
	}
	
	@Override
	public List<Cart> getCart(int product_id,String name) {
		
		return cartDAO.getCart(product_id,name);
	}
	
	@Override
	public void updatequantity(int qty, int product_id,String name) {
		
		cartDAO.updateQuantity(qty,product_id,name);
	}

}
