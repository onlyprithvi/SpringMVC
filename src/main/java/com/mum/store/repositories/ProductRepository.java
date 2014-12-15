package com.mum.store.repositories;

import java.util.List;

import com.mum.store.domain.Product;

public interface ProductRepository{
	public List<Product> viewAllActiveProducts();

	public Product viewProductById(String id);

	public List<Product> viewAllProducts();

	public List<Product> viewProductIdByTag();

	public void addProducts(Product p);
}
