package com.niit.shopping.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class ProductDetails implements Serializable {

	private static final long serialVersionUID = 4712785770138386703L;
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int product_id;
	@NotEmpty(message="Please enter a Product name")
	private String product_name;
	@NotEmpty(message="Please enter a Category")
	private String product_category;
	@NotEmpty(message="Please enter a Product description")
	private String product_description;
	@NotNull(message="Please enter a Product price")
	private Integer product_price;
	
	/*@OneToMany(mappedBy= "productDetails",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<ProductDetails> productList;*/
	
	@NotNull(message="Please enter the number of products present in stock")
	private int stock;
	
	private String image_name;
	
	@NotEmpty(message="Please enter a Brand")
	private String product_brand;
	

	@Transient 
	private MultipartFile image;
		
	
	public String getProduct_brand() {
		return product_brand;
	}
	public void setProduct_brand(String product_brand) {
		this.product_brand = product_brand;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public Integer getProduct_price() {
		return product_price;
	}
	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
	}
		
	
	
	
	/*public List<ProductDetails> getProductList() {
		return productList;
	}
	public void setProductList(List<ProductDetails> productList) {
		this.productList = productList;
	}*/
	
	/*public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}*/
	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	@Override
	public String toString(){
		return "product id="+product_id+", product name="+product_name+",product category ="+product_category+",product description="+product_description+",product price"+product_price+"image"+image;
	}
	
}
