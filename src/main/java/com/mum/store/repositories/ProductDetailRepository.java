package com.mum.store.repositories;

import com.mum.store.domain.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDetailRepository extends CrudRepository<Product, Long> {

	Product findById(long id);

}
