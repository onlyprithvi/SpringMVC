package com.mum.store.services;

import com.mum.store.domain.Product;
import com.mum.store.domain.ProductDetails;
import com.mum.store.domain.User;
import com.mum.store.repositories.AdministratorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by Prithvi on 12/16/2014.
 */
@Service

public class AdminsitratorServiceImpl implements AdminstrationService{


    @Autowired
    AdministratorRepository repository;

    @Override
    public List<Product> getAllPendingApprovals() {
        return (List<Product>) repository.getAllPendingProducts();
    }


    @Override
    public List<User> getAllUsers() {
        return null;
    }


    @Override
    public List<Product> getAllProducts() {
        return null;
    }



    @Override
    public List<Product> getAllApprovedProducts() {
        return null;
    }


    @Override
    public void save(Product product) {
        repository.save(product);
    }

    @Override
    public void delete(Product product) {
        repository.delete(product);
    }

    @Override
    public Product getProductById(String id) {
        return repository.findOne((long) Float.parseFloat(id));
    }

    @Override
    public List<Product> getAllRejectedProducts() {
        return (List<Product>) repository.getAllRejectedProducts();
    }
}
