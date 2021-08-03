package com.lp.dao;

import com.lp.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    Integer selectUser(User user);

}
