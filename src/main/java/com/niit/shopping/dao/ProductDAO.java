package com.niit.shopping.dao;

import java.util.List;
import java.util.Set;

import com.niit.shopping.model.Cart;
import com.niit.shopping.model.OrderDetails;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.ShippingAddress;

public interface ProductDAO {

	public void addProduct(ProductDetails productDetails);
	public void updateProduct(ProductDetails productDetails);
	public List<ProductDetails> listProducts();
	public ProductDetails getProductById(int product_id);
	public void removeProduct(int product_id);
	public List<ProductDetails> listBrands();
	public List<ProductDetails> getProductByBrand(String product_brand);
	public List<ProductDetails> getViewProductById(int product_id);
	public Set<ProductDetails> getCartProductById(int product_id);
	public void saveAddress(ShippingAddress shippingaddress);
	public List<ProductDetails> listsmartnotifiers();
	public List<ProductDetails> listwatchphones();
	public List<ProductDetails> listhealth();
	public List<ProductDetails> listfitness();
	public void saveOrder(OrderDetails orderDetails);
	public void updateProduct(int product_id,int qty);
	public void updateQuantity(int quantity);
	public void updatecart(Cart cartqty);
	public List<OrderDetails> getOrderlist(String name);
	public List<ProductDetails> getStock(int product_id);
	public void updateStock(int product_id,int stock);
	public void updatecartStock(int product_id, String username, int stock);
	public List<Cart> getCartlistByUser(String username);
	public List<OrderDetails> getMyOrders(String username);
	public int getOrderNumber(String username);
	public void cancelorder(String name);
	public void deleteCart(int cart_id,String username);
	public void updateStockQuantity(int product_id, int quantity);
	public List<Cart> getCartByCart_id(int cart_id, String name);
	
}
