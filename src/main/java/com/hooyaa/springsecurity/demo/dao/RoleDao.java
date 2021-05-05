package com.hooyaa.springsecurity.demo.dao;

import com.hooyaa.springsecurity.demo.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
}