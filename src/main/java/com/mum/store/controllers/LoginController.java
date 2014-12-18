package com.mum.store.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import java.security.Principal;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping( value="/loginfailed", method = RequestMethod.GET)
	public String loginError(Model model){
		model.addAttribute("error", "true");
		return "login";
	}
	
	@RequestMapping( value = "/logout", method = RequestMethod.GET)
	public String logout(Model model,SessionStatus status,Principal principal){
        principal=null;
        status.setComplete();
		return "redirect:/login";
	}
}
