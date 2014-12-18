package com.mum.store.controllers;

import com.mum.store.com.mum.store.contstants.Constants;
import com.mum.store.domain.Product;
import com.mum.store.domain.User;
import com.mum.store.services.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Prithvi on 12/17/2014.
 */
@Controller
public class TransactionController {

    @Autowired
    TransactionService transactionService;


    @RequestMapping("/reserve")
    public ModelAndView reserveProduct(@RequestParam("productId")String id,Model model,HttpServletRequest request, SessionStatus status){

        User user =(User)request.getSession().getAttribute("userSession");



        ModelAndView mv = new ModelAndView();

        System.out.print("user" +user.getFirstName());

        transactionService.reserve(user,id);
        mv.setViewName("redirect:/");
        return mv;
    }

}
