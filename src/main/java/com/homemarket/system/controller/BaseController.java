package com.homemarket.system.controller;

import com.homemarket.system.service.*;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseController {
	@Autowired
	public AdminService userService;
	@Autowired
	public RoleService roleService;
	@Autowired
	public MenuService menuService;
}
