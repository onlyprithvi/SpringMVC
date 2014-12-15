package com.mum.store.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mum.store.domain.Product;
import com.mum.store.repositories.ProductRepository;


@Transactional
@Service
public class ProductServiceImpl implements ProductService {
	
	public ProductServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Autowired
	ProductRepository repository;

	@Override
	public List<Product> viewAllActiveProducts() {
		return repository.viewAllActiveProducts();
	}

	@Override
	public Product viewProductById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> viewAllProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> viewProductIdByTag() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addProducts(Product p) {
		// TODO Auto-generated method stub

	}

}
