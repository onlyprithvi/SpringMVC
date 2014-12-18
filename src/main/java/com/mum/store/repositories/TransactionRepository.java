package com.mum.store.repositories;

import com.mum.store.domain.Transaction;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Prithvi on 12/17/2014.
 */
@Repository
public interface TransactionRepository extends CrudRepository<Transaction,Long>{
}
