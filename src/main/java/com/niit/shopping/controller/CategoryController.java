package com.niit.shopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.shopping.model.ProductDetails;
import com.niit.shopping.service.ProductService;



@Controller
public class CategoryController {
	
	
	@Autowired
	ProductService productService;

	@RequestMapping("/smartnotifiers")
	public String smartnotifiers()
	{
		return "smartnotifiers";
	}
	
	@RequestMapping("/category/smartnotifiers")
	public @ResponseBody List<ProductDetails>  categorySmartnotifiers(){
		
		return productService.listsmartnotifiers();
		
	}
	
	@RequestMapping("/watchphones")
	public String watchphones()
	{
		return "watchphones";
	}
	
	@RequestMapping("/category/watchphones")
	public @ResponseBody List<ProductDetails>  categorywatchphones(){
		
		return productService.listwatchphones();
		
	}
	
	@RequestMapping("/health")
	public String health()
	{
		return "health";
	}
	
	@RequestMapping("/category/health")
	public @ResponseBody List<ProductDetails>  categoryhealth(){
		
		return productService.listhealth();
		
	}
	
	
	@RequestMapping("/fitness")
	public String fitness()
	{
		return "fitness";
	}
	
	@RequestMapping("/category/fitness")
	public @ResponseBody List<ProductDetails>  categoryfitness(){
		
		return productService.listfitness();
		
	}
}
