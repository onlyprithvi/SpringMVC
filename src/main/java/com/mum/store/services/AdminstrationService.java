package com.mum.store.services;

import com.mum.store.domain.Product;
import com.mum.store.domain.ProductDetails;
import com.mum.store.domain.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Prithvi on 12/16/2014.
 */

public interface AdminstrationService {

    public List<User> getAllUsers();
  //  public List<User> getUserById();
    public List<Product> getAllProducts();
 //   public List<Product> getAllProductsByUser(User user);
    public List<Product> getAllApprovedProducts();
    public List<Product> getAllPendingApprovals();
    public void save(Product product);
    public Product getProductById(String id);
}
