package com.niit.shopping.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.shopping.model.Cart;
import com.niit.shopping.model.OrderDetails;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.UserDetails;
import com.niit.shopping.service.CartService;
import com.niit.shopping.service.ProductService;
import com.niit.shopping.service.RegisterService;

@Controller
public class HomeController {

	@Autowired
	ProductService productService;

	@Autowired
	SessionFactory sessionFactory;

	@Autowired
	RegisterService registerService;
	
	@Autowired
	CartService cartService;

	@RequestMapping({ "/", "/index" })
	public String index(HttpSession session, Principal activeuser) {
		try{
		session.setAttribute("listbrand", productService.listBrands());
		if (activeuser != null) {
			session.setAttribute("cartNumber", cartService.cartNumber(activeuser.getName()));
		}
		session.setAttribute("listproduct", productService.listProducts());
		
		
		return "index";
		}
		catch (Exception e) {
			return "404";
		}

	}

	

	@RequestMapping(value = "/brand/{product_brand}")
	public String productBrand(@PathVariable("product_brand") String brand_name, HttpSession session) {
		try{session.setAttribute("brand1", brand_name);
		System.out.println(brand_name);
		return "brand";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping(value = "/brand1/{brand}")
	public @ResponseBody List<ProductDetails> brand(@PathVariable("brand") String product_brand) {
		return productService.getProductByBrand(product_brand);

	}

	

	

	@RequestMapping("/view/{product_id}")
	public String viewProduct(@PathVariable("product_id") int product_id, HttpSession session) {
		try{
		session.setAttribute("productViewById", product_id);
		System.out.println(product_id);
		return "viewproductbyid";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping("/viewProduct/{product_id}")
	public @ResponseBody List<ProductDetails> editProduct(@PathVariable("product_id") int product_id) {
		return productService.getViewProductById(product_id);

	}
	
	@ModelAttribute("cart")
	public Cart getcart() {
	 return new Cart();
	
	}
	
	@RequestMapping(value="/cart/quantity")
	public String setQuantity(){
		try{
		return "redirect:/cartcheckout";
		}
		catch (Exception e) {
			return "404";
		}
	}
	
	

	@RequestMapping(value = "/shippingaddress")
	public String shippingaddress() {
		
		return "shippingaddress";
	}
	
	
	@RequestMapping(value="/order")
	public @ResponseBody List<OrderDetails> getOrder(Principal username){
		List<OrderDetails> orderDetails=productService.getOrderlist(username.getName());
		System.out.println("in /order");
		System.out.println(productService.getOrderlist(username.getName()));
		return orderDetails;
	}
	
	@RequestMapping("/sample")
	public @ResponseBody List<OrderDetails>  getsample(Principal username){
		List<OrderDetails> orderDetails=productService.getOrderlist(username.getName());
		return orderDetails;
	}
	
	@RequestMapping("/myorder")
	public String myOrderpage(HttpSession session,Principal username){
		try{
		session.setAttribute("ordernumber",productService.getOrderNumber(username.getName()));
		return "myorder";
		}
		catch (Exception e) {
			return "404";
		}
	}
	
	@RequestMapping("/myorderlist")
	public @ResponseBody List<OrderDetails> myOrder(HttpSession session,Principal username){
		System.out.println("in my order");
		return productService.getMyOrders(username.getName());
	}
	
	@RequestMapping("/cancelorder/{cart_id}/{quantity}")
	public String cancelorder(@PathVariable("cart_id") int cart_id ,@PathVariable("quantity") int quantity,Principal username){
		try{
		//cancel an order with username
		productService.cancelorder(username.getName(),cart_id);
		
		
		//updating stock
        List<Cart> cart =productService.getCartByCart_id(cart_id,username.getName());
        
        int product_id= cart.get(0).getProduct_id();
        
       ProductDetails productDetails= productService.getProductById(product_id);
       
       
		
		int  stock=productDetails.getStock()+quantity;
		
		productService.updateStockQuantity(product_id,stock);
		
		
		//deleting cart_id from cart
		productService.deleteCart(cart_id,username.getName());
		
		
		return "redirect:/myorder";
		}
		catch (Exception e) {
			return "404";
		}
	}

	
	@RequestMapping(value = "/motobrand")
	public String motobrand() {
		try{
		return "motobrand";
		}
		catch (Exception e) {
			return "404";
		}
	}

	
	@RequestMapping(value = "/huaweibrand")
	public String huaweibrand() {
		try{
		return "huaweibrand";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping(value = "/asusbrand")
	public String asusbrand() {
		try{
			return "asusbrand";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping(value = "/samsungbrand")
	public String samsungbrand() {
		
		try{
			return "samsungbrand";
		}
		catch (Exception e) {
			return "404";
		}
	}

	

	@RequestMapping(value = "/manage")
	public String manage() {
		try{
		return "manage";
		}
		catch (Exception e) {
		return "404";
		}
	}

	@RequestMapping(value = "/loginerror")
	public String loginerror() {
		try{
		return "loginerror";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping(value = "/403")
	public String loginerror403() {
		return "403";
	}

	
}
