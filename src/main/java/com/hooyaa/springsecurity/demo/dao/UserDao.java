package com.hooyaa.springsecurity.demo.dao;

import com.hooyaa.springsecurity.demo.entity.Users;

public interface UserDao {

	Users findByUserName(String userName);

	void save(Users user);
}