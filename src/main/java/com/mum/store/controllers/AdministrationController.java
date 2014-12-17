package com.mum.store.controllers;

import com.mum.store.domain.Product;
import com.mum.store.services.AdminstrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Prithvi on 12/16/2014.
 */
@RequestMapping("/admin")
@Controller
public class AdministrationController {

    @Autowired
    AdminstrationService service;

    @RequestMapping
  public  String viewApprovalRequest(Model model) {

        model.addAttribute("requestforApproval", service.getAllPendingApprovals());
        return "admin/approvalRequest";
    }


    @RequestMapping("/approve")
    public String approv(@RequestParam("productId") String id) {
        Product product=service.getProductById(id);
        product.setIsApprovedByAdmin(true);
        service.save(product);
        return "redirect:/";
    }

    @RequestMapping("/reject")
    public String reject(@RequestParam("productId") String id) {
        Product product=service.getProductById(id);
        product.setIsApprovedByAdmin(null);
        service.save(product);
        return "redirect:/";
    }
}
