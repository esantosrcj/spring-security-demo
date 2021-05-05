package com.hooyaa.springsecurity.demo.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.hooyaa.springsecurity.demo.entity.Users;
import com.hooyaa.springsecurity.demo.user.CrmUser;

public interface UserService extends UserDetailsService {

	Users findByUserName(String userName);

	void save(CrmUser crmUser);
}