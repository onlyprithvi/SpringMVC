package com.mum.store.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mum.store.services.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService service;

	@RequestMapping("/")
	public String list(Model model) {
		System.out.println(service.viewAllActiveProducts());
		return "home";
	}
}
