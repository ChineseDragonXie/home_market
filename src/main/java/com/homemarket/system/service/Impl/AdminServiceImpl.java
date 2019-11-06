package com.homemarket.system.service.Impl;

import com.homemarket.system.dao.AdminMapper;
import com.homemarket.system.entity.Admin;
import com.homemarket.system.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper um;

    @Override
    public Admin findUserByName(String username) {
    	Admin u = um.findUserByName(username);
        return u;
    }

    /**
     * 通过角色id查询角色总数
     */
    @Override
    public Integer queryAllUserCountByRoleId(String roleId) {
        Integer countByRoleId_db = null;
        if ("4".equals(roleId)) {
            return um.queryAllUserCountByRoleId(roleId);
        } else if ("3".equals(roleId) || "2".equals(roleId)) {
            // 需要查询角色2班主任和3讲师
            countByRoleId_db = um.queryAllUserCountByRoleId("2") + um.queryAllUserCountByRoleId("3");
        }
        return countByRoleId_db;
    }

    /**
     * 通过角色id查询所有角色
     */
    @Override
    public List<Admin> queryAllUserByRoleId(String roleId) {
        if ("4".equals(roleId)) {
            return um.queryAllUserByRoleId(roleId);
        } else if ("3".equals(roleId) || "2".equals(roleId)) {
            // 需要查询角色2班主任和3讲师
            List<Admin> list_role2 = um.queryAllUserByRoleId("2");
            List<Admin> list_role3 = um.queryAllUserByRoleId("3");
            list_role2.addAll(list_role3);
            return list_role2;
        }
        return null;
    }

	@Override
	public int deletUserByUserId(String uId) {
		return 0;
	}

	@Override
    public Admin queryUserByUserId(String Uid) {
        return um.queryUserByUserId(Uid);
    }

    @Override
    public int queryUserByName(String username) {

        return um.queryUserByName(username);
    }
}
