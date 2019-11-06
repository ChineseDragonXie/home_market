package com.homemarket.system.service.Impl;

import com.homemarket.system.dao.RoleMapper;
import com.homemarket.system.entity.Role;
import com.homemarket.system.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	private RoleMapper rm;
	@Override
	public Role findRoleByRoleName(String rname) {
		Role r = rm.findRoleByRoleName(rname);
		return r;
	}

}
