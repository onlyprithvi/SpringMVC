package com.mum.store.repositories;

import com.mum.store.domain.Product;
import com.mum.store.domain.ProductDetails;
import com.mum.store.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Prithvi on 12/16/2014.
 */
@Repository
public interface AdministratorRepository extends CrudRepository<Product,Long>{

    @Query("SELECT p from PRODUCT p where p.isApprovedByAdmin <> true")
    List<Product> getAllPendingProducts();

    @Query("SELECT p from PRODUCT p where p.isApprovedByAdmin is NULL")
    List<Product> getAllRejectedProducts();

    //List<Product> getAllProducts();
    //List<Product> getAllApprovedProducts();

    //void approveProduct(Product productDetails);
}