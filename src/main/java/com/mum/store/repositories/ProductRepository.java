package com.mum.store.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mum.store.domain.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {

	Product findById(long id);

	@Query("SELECT p from PRODUCT p where p.isApprovedByAdmin=true")
	List<Product> getAllApprovedProducts();

    @Query("select p from PRODUCT p where owner=:uId")
    List<Product> getAllProductsByUser(@Param("uId") long key);

}
