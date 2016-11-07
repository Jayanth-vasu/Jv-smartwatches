package com.niit.shopping.dao;

import java.util.List;

import com.niit.shopping.model.Cart;

public interface CartDAO {
	
	public boolean checkProduct(Cart cart);
	public void addCartProduct(Cart cart);
	public int cartNumber(String username);
	public List<Cart> getCart(int product_id,String name);
	public Cart getCartByUsername(String username);
	public void removeCartProduct(int cart_id);
	public void clearall(String username);
	public List<Cart> getCartByUser(String username);
	public List<Cart> getTotalPrice(String username);
	public void updateQuantity(int qty, int product_id, String name);
	public Cart getCartById(int cart_id);

}
