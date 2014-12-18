package com.mum.store.services;

import com.mum.store.com.mum.store.contstants.Constants;
import com.mum.store.domain.Product;
import com.mum.store.domain.Transaction;
import com.mum.store.domain.User;
import com.mum.store.repositories.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Date;

/**
 * Created by Prithvi on 12/17/2014.
 */
@Transactional
@Service
public class TransactionServiceImpl implements TransactionService{
    @Autowired
    ProductService productService;

    @Autowired
    TransactionRepository repository;
    @Override
    public void reserve(User user,String id) {
        Product p=productService.viewProductById(Long.parseLong(id));
        p.setReservedOrOpen(Constants.RESERVE);
        productService.addProducts(p);

        Transaction transaction= new Transaction();
        transaction.setBuyer(user);
        transaction.setSeller(user);
        transaction.setTransactionDate(new Date());
        repository.save(transaction);
    }
}
