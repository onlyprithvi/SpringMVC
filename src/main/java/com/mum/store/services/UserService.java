package com.mum.store.services;

import com.mum.store.domain.User;

/**
 * Created by dell on 12/17/14.
 */
public interface UserService {

    public void addUser(User user);

    public User getUser(long userId);

    public User getUserByName(String userName);
}
