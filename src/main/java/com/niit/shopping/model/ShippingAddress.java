package com.niit.shopping.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class ShippingAddress implements Serializable {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = -7459698747872348553L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int shipping_id;
	
	
	
	private String street_name;
	private String city;
	private String state;
	private String post_code;
	private String country;
	
	
	
	@OneToMany(mappedBy="shippingAddress",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<ShippingAddress> shippingAddress;
	
	public String getStreet_name() {
		return street_name;
	}
	public void setStreet_name(String street_name) {
		this.street_name = street_name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPost_code() {
		return post_code;
	}
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getShipping_id() {
		return shipping_id;
	}
	public void setShipping_id(int shipping_id) {
		this.shipping_id = shipping_id;
	}
	
	
	
	
}
