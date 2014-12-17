package com.mum.store.repositories;

import com.mum.store.domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by dell on 12/17/14.
 */
@Repository
public interface UserRepository extends CrudRepository<User,Long>{

}
