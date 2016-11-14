package com.niit.shopping.service;

import java.security.Principal;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.dao.ProductDAO;
import com.niit.shopping.model.Cart;
import com.niit.shopping.model.OrderDetails;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.ShippingAddress;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;
	
	@Transactional
	public void addProduct(ProductDetails productDetails) {
		productDAO.addProduct(productDetails);

	}

	@Transactional
	public void updateProduct(ProductDetails productDetails) {
		productDAO.updateProduct(productDetails);

	}

	@Transactional
	public List<ProductDetails> listProducts() {
		
		return productDAO.listProducts();
	}

	@Transactional
	public ProductDetails getProductById(int product_id) {
		
		return productDAO.getProductById(product_id);
	}

	@Transactional
	public void removeProduct(int product_id) {
		productDAO.removeProduct(product_id);

	}

	@Override
	public List<ProductDetails> listBrands() {
		
		return productDAO.listBrands();
	}

	@Override
	public List<ProductDetails> getProductByBrand(String product_brand) {
		
		return productDAO.getProductByBrand(product_brand);
	}
	
	@Override
	public List<ProductDetails> getViewProductById(int product_id) {
		
		return productDAO.getViewProductById(product_id);
	}


	@Override
	public Set<ProductDetails> getCartProductById(int product_id) {
		
		return productDAO.getCartProductById(product_id);
	}

	
	@Override
	public void saveAddress(ShippingAddress shippingaddress) {
		
		productDAO.saveAddress(shippingaddress);
	}

	@Override
	public List<ProductDetails> listsmartnotifiers() {
		
		return productDAO.listsmartnotifiers() ;
	}

	@Override
	public List<ProductDetails> listwatchphones() {
		
		return productDAO.listwatchphones() ;
	}

	@Override
	public List<ProductDetails> listhealth() {
		
		return productDAO.listhealth();
	}

	@Override
	public List<ProductDetails> listfitness() {
		
		return productDAO.listfitness();
	}

	

	@Override
	public void saveOrder(OrderDetails orderDetails) {
		 productDAO.saveOrder(orderDetails);

	}

	@Override
	public void updateProduct(int product_id,int qty) {
		 productDAO.updateProduct(product_id,qty);
		
	}

	
	

	@Override
	public List<OrderDetails> getOrderlist(String name) {
		
		return productDAO.getOrderlist(name);
	}

	@Override
	public List<ProductDetails> getStock(int product_id) {
		
		return productDAO.getStock(product_id);
	}

	@Override
	public void updateStock(int product_id,int stock) {
	 
		productDAO.updateStock(product_id,stock);
		
	}

	@Override
	public void updatecartStock(int product_id, String username, int stock) {
	
		productDAO.updatecartStock(product_id,username,stock);
		
	}

	@Override
	public List<Cart> getCartlistByUser(String username) {
		
		return productDAO.getCartlistByUser(username);
	}

	@Override
	public List<OrderDetails> getMyOrders(String username) {
		
		return productDAO.getMyOrders(username);
	}

	@Override
	public int getOrderNumber(String username) {
		
		return productDAO.getOrderNumber(username);
	}

	@Override
	public void cancelorder(String name,int cart_id) {
		productDAO.cancelorder(name,cart_id);
		
	}

	@Override
	public void deleteCart(int cart_id,String username) {
		productDAO.deleteCart(cart_id,username);
		
	}

	@Override
	public void updateStockQuantity(int product_id, int quantity) {
		productDAO.updateStockQuantity(product_id,quantity);
		
	}

	@Override
	public List<Cart> getCartByCart_id(int cart_id, String name) {
		
		return productDAO.getCartByCart_id(cart_id,name);
	}

	@Override
	public List<Cart> getCartlistByStatus(String username) {
		
		return productDAO.getCartlistByStatus(username);
	}

	

	

}
