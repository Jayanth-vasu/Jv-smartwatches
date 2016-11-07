package com.niit.shopping.service;

import java.util.List;



import com.niit.shopping.model.Cart;


public interface CartService {
	
	public boolean checkProduct(Cart cart);
	public void addCartProduct(Cart cart);
	public int cartNumber(String username);
	public List<Cart> getCart(int product_id,String name);
	public void updatequantity(int qty, int product_id,String name);
	public Cart getCartByUsername(String username);
	public void removeCartProduct(int cart_id);
	public void clearall(String username);
	public List<Cart> getCartByUser(String username);
	public List<Cart> getTotalPrice(String username);
	

}
