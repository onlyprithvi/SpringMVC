package com.mum.store.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mum.store.domain.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {

	Product findById(long id);

}
