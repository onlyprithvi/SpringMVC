package com.mum.store.services;

import com.mum.store.domain.User;
import com.mum.store.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * Created by dell on 12/17/14.
 */
@Transactional
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    public UserServiceImpl(){

    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }

    @Override
    public User getUser(long userId) {
        return userRepository.findOne(userId);
    }

    @Override
    public User getUserByName(String userName) {
        return userRepository.getUserByName(userName);
    }


}
