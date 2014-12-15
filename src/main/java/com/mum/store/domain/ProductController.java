package com.mum.store.domain;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@RequestMapping("/")
	public String list(Model model) {

		model.addAttribute("message","hello from spring");
		return "welcome";
	}
}
