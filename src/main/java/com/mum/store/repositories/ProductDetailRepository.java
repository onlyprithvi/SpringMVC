package com.mum.store.repositories;

import com.mum.store.domain.Product;
import com.mum.store.domain.ProductDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDetailRepository extends CrudRepository<ProductDetails, Long> {

	Product findById(long id);

}
