package com.homemarket.system.service;

import com.homemarket.system.entity.Admin;

import java.util.List;

public interface AdminService {
	public Admin findUserByName(String username);

	public Integer queryAllUserCountByRoleId(String roleId);

	public List<Admin> queryAllUserByRoleId(String roleId);

	public int deletUserByUserId(String uId);

	public Admin queryUserByUserId(String string);

	public int queryUserByName(String uUsername);

}
