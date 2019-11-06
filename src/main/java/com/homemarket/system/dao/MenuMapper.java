package com.homemarket.system.dao;

import com.homemarket.system.entity.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
	List<Menu> findMenuAll();
}
