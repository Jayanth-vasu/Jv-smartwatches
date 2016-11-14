package com.niit.shopping.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopping.model.FileUtil;
import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	private String path = "G:\\Java programs\\eclipse\\JEE files\\jvsmartwatches\\src\\main\\webapp\\resources\\img\\";

	@ModelAttribute("smartproducts")
	public ProductDetails getproduct() {
		return new ProductDetails();
	}

	/*
	 * @ModelAttribute("command") public ProductDetails updatedproduct() {
	 * return new ProductDetails(); }
	 */

	@RequestMapping("/product")

	public String listPersons(HttpSession session, ProductDetails productDetails) {
		try{
		
		session.setAttribute("listProducts", productService.listProducts());
		session.setAttribute("listBrands", productService.listBrands());
		
		return "product";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("smartproducts") @Valid ProductDetails productDetails,BindingResult result,Model model ) {
		try{
		if(result.hasErrors())
		{
		  
			return "product";
		}
		else{
		MultipartFile file = productDetails.getImage();

		String ima = file.getOriginalFilename();
		FileUtil.upload(path, file, ima);
		productDetails.setImage_name(ima);

		/*
		 * String im=productDetails.getImage_name(); im=ima;
		 */

		productService.addProduct(productDetails);

		return "redirect:/product";
		}
		}
		catch (Exception e) {
			return "404";
		}
		
	}

	@RequestMapping("/remove/{product_id}")
	public String removeProduct(@PathVariable("product_id") int product_id, Model model) {
		try{
		productService.removeProduct(product_id);
		model.addAttribute("listProducts", productService.listProducts());
		return "brand";
		}
		catch (Exception e) {
			return "404";
		}
	}

	@RequestMapping("/edit/{product_id}")
	public ModelAndView editProduct(@PathVariable("product_id") int product_id) {
		try{
		ProductDetails productDetails = productService.getProductById(product_id);
		return new ModelAndView("editproduct", "smartproducts", productDetails);
		}
		catch (Exception e) {
			return new ModelAndView("404");
		}
	}

	@RequestMapping("/viewall")
	public @ResponseBody List<ProductDetails> viewall(ProductDetails productDetails, Model model) {

		return productService.listProducts();
		
	}
	
	@RequestMapping("/viewallproducts")
	public String viewallproducts() {
		try{
		return "viewall";
		}
		catch (Exception e) {
			return "404";
		}
		
	}

	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String update(@ModelAttribute("smartproducts") @Valid ProductDetails productDetails,BindingResult result) {
		try{
		if(result.hasErrors())
		{
		  
			return "editproduct";
		}
		else{
		MultipartFile file = productDetails.getImage();

		String ima = file.getOriginalFilename();
		FileUtil.upload(path, file, ima);
		productDetails.setImage_name(ima);
		
		productService.updateProduct(productDetails);
		/*model.addAttribute("listProducts", productService.listProducts());*/
		return "redirect:/viewallproducts";
		
	}
		}
		catch (Exception e) {
			return "404";
		}
}
}