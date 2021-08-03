package com.lp.service;

import com.lp.dao.UserDao;
import com.lp.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Override
    public Integer selectUser(User user) {
        return userDao.selectUser(user);
    }

}
