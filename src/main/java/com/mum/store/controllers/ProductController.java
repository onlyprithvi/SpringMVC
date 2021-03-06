package com.mum.store.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import com.mum.store.domain.User;
import com.mum.store.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mum.store.domain.Product;
import com.mum.store.services.ProductService;

import java.io.File;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@SessionAttributes("userSession")
@Controller
public class ProductController {

	@Autowired
	ProductService service;
    @Autowired
    UserService userService;
    List<String> status = new ArrayList<String>();

    public ProductController() {
        // TODO Auto-generated constructor stub
        status.add("New");
        status.add("Used");
        status.add("Like New");
        status.add("Not Working");

    }

	@RequestMapping("/")
	public String list(Model model,Principal principal) {
        if(principal!=null){
            model.addAttribute("userSession", userService.getUserByName(principal.getName()));
        }
        model.addAttribute(service.viewAllActiveProducts());
		return "home";
	}

    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String addProduct(@ModelAttribute("newProduct") Product newProduct,
                             BindingResult result, Model model) {
        model.addAttribute("status", status);
        return "addProduct";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("newProduct") @Valid Product newProduct,
                                BindingResult result, @RequestParam("file") MultipartFile mfile,
                                Model model, HttpServletRequest request) {


        if (result.hasErrors()) {
            model.addAttribute("status", status);
            return "addProduct";
        }
        else {
            MultipartFile productImage = mfile;
            String rootDirectory = request.getSession().getServletContext().getRealPath("/");
            if (productImage != null && !productImage.isEmpty()) {
                try {
                    int randNumber=new Random().nextInt();
                    String filePath = rootDirectory + "\\resources\\images\\"+ randNumber + ".jpg";
                    File file = new File(filePath);
                    productImage.transferTo(file);
                    newProduct.getDetails().setImagePath("resources/images/" + randNumber + ".jpg");
                } catch (Exception e) {
                    throw new RuntimeException("Product Image saving failed", e);
                }
            }

            User owner =(User)request.getSession().getAttribute("userSession");
            newProduct.setOwner(owner.getId());
            service.addProducts(newProduct);
            return "redirect:/";
        }
    }
	
	@RequestMapping("/viewdetails")
	public ModelAndView viewProductByID(@RequestParam("product") String id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("product", service.viewProductById(Long.parseLong(id)));
		mv.setViewName("viewDetails");
		return mv;
	}

    @RequestMapping("/contactSeller")
    public @ResponseBody String contactSeller(Model model,@RequestParam("sellerId") long uId){

        User user = userService.getUser(uId);

        String returnString = user.getFullName() + "<br/>" +
                              user.getPhoneNumber()+"<br/>"+
                            user.getAddress1()+"<br/>"+
                            user.getAddress2()+"<br/>"+
                            user.getState()+"<br/>"+
                            user.getCountry()+"<br/>";

        return returnString;
    }
	
}
