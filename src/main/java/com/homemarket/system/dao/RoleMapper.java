package com.homemarket.system.dao;

import com.homemarket.system.entity.Role;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleMapper {
	public Role findRoleByRoleName(String rname);
}
