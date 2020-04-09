package com.weiqi.service;

import java.util.Date;
import java.util.List;

import com.weiqi.entity.Admin;
import com.weiqi.entity.Menu;
import com.weiqi.entity.Role;
import com.weiqi.utils.ResultUtil;

public interface AdminService {
	
	/************************登录相关************************/
	Admin login(String username,String password);
	
	/************************Admin相关************************/
	void updAdmin(Admin admin);

	Admin getAdminById(int id);

	Admin getAdminByUsername(String username);
	
	ResultUtil getAdminsList(Integer page, Integer limit);
	
	void insAdmin(Admin admin);

	void delAdminById(Long id);

	/************************AdminLog相关************************/
	void insAdminLog(String username, String loginIp, Date loginTime);

	ResultUtil getAdminLogsList(Integer page, Integer limit);

	/************************Role相关************************/
	ResultUtil getRoles(Integer page, Integer limit);

	Role getRoleById(Long long1);
	
	List<Role> getRoles();

	void updRole(Role role, String m);

	Role getRoleByRoleName(String roleName);

	void delRole(Long roleId);

	void insRole(Role role, String m);

	/************************RoleMenu相关************************/
	List<Menu> getXtreeData(Admin admin);

	/************************Menu相关************************/
	List<Menu> getMenus(Admin admin);
	
	List<Menu> getAllMenus();

	void updMenuSortingById(Menu menu);

	List<Menu> checkNameSameLevel(Menu menus);

	Menu getMenuById(Long menuId);
	
	Menu getMenuByName(String name);

	void updMenu(Menu menus);

	void insMenu(Menu menus);

	List<Menu> getMenusByParentId(Long menuId);

	void delMenuById(Long menuId);
}
