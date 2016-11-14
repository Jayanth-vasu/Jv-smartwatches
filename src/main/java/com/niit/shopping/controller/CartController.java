package com.niit.shopping.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.shopping.model.Cart;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.model.UserDetails;
import com.niit.shopping.service.CartService;
import com.niit.shopping.service.ProductService;
import com.niit.shopping.service.RegisterService;

@Controller
public class CartController {
	
	@Autowired
	CartService cartService;
	
	@Autowired
	RegisterService registerService;
	
	@Autowired
	ProductService productService;

	@RequestMapping("/addtocart/{product_id}")
	public String addtocart1(@PathVariable("product_id") int product_id, Principal activeuser, HttpSession session) {
		try{
		if (activeuser.getName() == null) {
			return "redirect:/login";
		} else {
			boolean isValid = false;

			Cart cart = new Cart();
			cart.setProduct_id(product_id);
			cart.setCheckUser(activeuser.getName());

			isValid = cartService.checkProduct(cart);

			if (isValid == false) {

				ProductDetails productDetails = (productService.getProductById(product_id));

				UserDetails userDetails = registerService.getUserByUsername(activeuser.getName());

				Cart userCart = new Cart();

				userCart.setUserDetails(userDetails);
				userCart.setProductName(productDetails.getProduct_name());
				userCart.setProductbrand(productDetails.getProduct_brand());
				userCart.setProductPrice(productDetails.getProduct_price());
				userCart.setImagename(productDetails.getImage_name());
				userCart.setProduct_id(productDetails.getProduct_id());

				userCart.setQuantity(1);
				userCart.setOrderstatus(false);

				userCart.setStock(productDetails.getStock());

				cartService.addCartProduct(userCart);
				session.setAttribute("cartNumber", cartService.cartNumber(activeuser.getName()));
			}

			if (isValid == true) {
				

				List<Cart> cartlist = cartService.getCart(product_id, activeuser.getName());

				int qty = cartlist.get(0).getQuantity() + 1;

				cartService.updatequantity(qty, product_id, activeuser.getName());

			}

			return "mycart";
		}
	}
		catch(Exception e){
			return "404";
		}
	}
	@RequestMapping("/mycart")
	public String viewmycart(Principal activeuser, HttpSession session) {
		try{
		session.setAttribute("cartNumber", cartService.cartNumber(activeuser.getName()));
		return "mycart";
		}
		catch(Exception e){
			return "404";
		}
	}

	@RequestMapping("/mycartlist")
	public @ResponseBody List<Cart> mycart(Principal activeuser, HttpSession session) {

		/*
		 * List<Cart> cart;
		 * 
		 * cart=(productService.getTotalPrice(activeuser.getName()));
		 */
		try{
		return cartService.getCartByUser(activeuser.getName());
		}
		catch(Exception e){
			e.printStackTrace();
			return cartService.getCartByUser(activeuser.getName());
		}

	}

	@RequestMapping("/removecartproduct/{cart_id}")
	public String removefromcart(@PathVariable("cart_id") int cart_id, Principal activeuser, HttpSession session) {
		try{
		cartService.removeCartProduct(cart_id);

		session.setAttribute("cartNumber", cartService.cartNumber(activeuser.getName()));

		return "redirect:/mycart";
		}
		catch (Exception e) {
			return "404";
		}

	}

	@RequestMapping("/clearall")
	public String clearall(HttpSession session, Principal activeuser) {
		try{
		cartService.clearall(activeuser.getName());

		session.setAttribute("cartNumber", cartService.cartNumber(activeuser.getName()));

		return "redirect:/mycart";
		}
		catch (Exception e) {
			return "404";
		}
	}

}
