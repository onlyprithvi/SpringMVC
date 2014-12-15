package com.mum.store.services;

import java.util.List;

import com.mum.store.domain.Product;

public interface ProductService {
	public List<Product> viewAllActiveProducts();

	public Product viewProductById(long id);

	public List<Product> viewAllProducts();

	public List<Product> viewProductIdByTag();

	public void addProducts(Product p);
}
