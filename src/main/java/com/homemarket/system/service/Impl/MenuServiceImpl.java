package com.homemarket.system.service.Impl;

import com.homemarket.system.dao.MenuMapper;
import com.homemarket.system.entity.Menu;
import com.homemarket.system.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired
	private MenuMapper mm;
	@Override
	public List<Menu> findMenuAll() {
		List<Menu> menus = mm.findMenuAll();
		return menus;
	}
}
