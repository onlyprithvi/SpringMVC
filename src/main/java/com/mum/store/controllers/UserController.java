package com.mum.store.controllers;

import com.mum.store.domain.User;
import com.mum.store.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by dell on 12/17/14.
 */

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping
    public String add(){
        System.out.print("herePPPP");
        return "user/addUser";
    }

    @RequestMapping(value = "/addUser",method = RequestMethod.GET)
    public String addUser(@ModelAttribute("newUser") User newUser,BindingResult result){
        return "user/addUser";
    }

    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("newUser") @Valid User newUser,BindingResult result){
         if(result.hasErrors()){
             return "user/addUser";
         }
        else{

            userService.addUser(newUser);

             return "redirect/user";
         }
    }
}
