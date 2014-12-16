package com.mum.store.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mum.store.domain.Product;
import com.mum.store.services.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService service;

	@RequestMapping("/")
	public String list(Model model) {
		model.addAttribute(service.viewAllActiveProducts());
		return "home";
	}
	
//	@RequestMapping(name="/add",method=RequestMethod.GET)
	public String addProduct(@ModelAttribute("newProduct") Product newProduct,BindingResult result){
		return "addProduct";
	}
	
//	@RequestMapping(name="/add",method=RequestMethod.POST)
	public String saveProduct(@ModelAttribute("newProduct") @Valid Product newProduct,BindingResult result){
		if(result.hasErrors())
			return "addProduct";
		else
			return "redirect:/";
	}
	
	@RequestMapping("/viewById")
	public ModelAndView viewProductByID(@RequestParam("productId") String id){
		ModelAndView mv= new ModelAndView();
	
		return mv;
	}
	
}
