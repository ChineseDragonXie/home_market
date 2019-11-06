package com.homemarket.system.dao;

import com.homemarket.system.entity.Admin;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminMapper {
	public Admin findUserByName(String username);

	public Integer queryAllUserCountByRoleId(String roleId);

	public List<Admin> queryAllUserByRoleId(String roleId);

	public int deletUserByUserId(String uId);

	public Admin queryUserByUserId(String uid);

	public int queryUserByName(String username);
}
