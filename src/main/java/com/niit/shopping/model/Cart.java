package com.niit.shopping.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Component
public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9102351367652284742L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cart_id;
	
	/*@ManyToOne
	@JoinColumn(name="product_id")
	private ProductDetails productDetails;
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<ProductDetails> productList ;*/
		
	@OneToOne
	@JoinColumn(name="mail_id")
	private UserDetails userDetails;
    
	
	
	private int product_id;
	
	private String productName;
	
	private double productPrice;
	
	private int quantity;
	
	private String imagename;
	
	private String productbrand;
	
	private int Stock;
	
	@Transient
	private String checkUser;
	
	@JsonIgnore
	private boolean orderstatus;
	
	@JsonIgnore
	@OneToMany(mappedBy="cart")
	private List<Cart> cart;
	
	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getImagename() {
		return imagename;
	}

	public void setImagename(String imagename) {
		this.imagename = imagename;
	}

	public String getProductbrand() {
		return productbrand;
	}

	public void setProductbrand(String productbrand) {
		this.productbrand = productbrand;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	/*public ProductDetails getProductDetails() {
		return productDetails;
	}

	public void setProductDetails(ProductDetails productDetails) {
		this.productDetails = productDetails;
	}*/

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getCheckUser() {
		return checkUser;
	}

	public void setCheckUser(String checkUser) {
		this.checkUser = checkUser;
	}

	

	public List<Cart> getCart() {
		return cart;
	}

	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}

	public boolean isOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(boolean orderstatus) {
		this.orderstatus = orderstatus;
	}

	public int getStock() {
		return Stock;
	}

	public void setStock(int stock) {
		Stock = stock;
	}
	
	
	
	

	/*public List<ProductDetails> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductDetails> productList) {
		this.productList = productList;
	}
*/
	
	
	
}
