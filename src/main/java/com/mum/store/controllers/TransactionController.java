package com.mum.store.controllers;

import com.mum.store.com.mum.store.contstants.Constants;
import com.mum.store.domain.Product;
import com.mum.store.domain.User;
import com.mum.store.services.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Prithvi on 12/17/2014.
 */
@Controller
public class TransactionController {

    @Autowired
    TransactionService transactionService;


    @RequestMapping("/reserve")
    public ModelAndView reserveProduct(@RequestParam("productId")String id,@ModelAttribute("user") User user){
        ModelAndView mv = new ModelAndView();
        transactionService.reserve(user,id);
        mv.setViewName("redirect:/");
        return mv;
    }

}
