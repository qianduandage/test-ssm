package com.li.dao.oldDao;

import com.li.bean.User1;

import java.util.List;

public interface UserDao {

    public List<User1> getAllUser();

    public User1 getUserById(int userId);
}

