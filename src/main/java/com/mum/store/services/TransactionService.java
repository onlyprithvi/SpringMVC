package com.mum.store.services;

import com.mum.store.domain.Product;
import com.mum.store.domain.User;

/**
 * Created by Prithvi on 12/17/2014.
 */
public interface TransactionService {
    public void reserve(User user, String productId);
}
