package com.mum.store.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mum.store.domain.Product;
import com.mum.store.services.ProductService;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {

	@Autowired
	ProductService service;
    List<String> status = new ArrayList<String>();

    public ProductController() {
        // TODO Auto-generated constructor stub
        status.add("New");
        status.add("Used");
        status.add("Like New");
        status.add("Not Working");

    }

	@RequestMapping("/")
	public String list(Model model) {
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
            String rootDirectory = request.getSession().getServletContext()
                    .getRealPath("/");
            if (productImage != null && !productImage.isEmpty()) {
                try {
                    File file = new File(rootDirectory + "\\resources\\images\\"+ newProduct.getId() + ".png");
                    productImage.transferTo(file);
                    newProduct.getDetails().setImagePath("\\resources\\images\\" + newProduct.getId() + ".png");
                } catch (Exception e) {
                    throw new RuntimeException("Product Image saving failed", e);
                }
            }

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
	
}
