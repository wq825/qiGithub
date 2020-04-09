package com.weiqi.service;

import com.weiqi.entity.User;
import com.weiqi.entity.UserSearch;
import com.weiqi.utils.ResultUtil;

public interface UserService {

	ResultUtil getAllUserList(Integer page, Integer limit,UserSearch search);

	User getUserById(int id);

	ResultUtil updateUserStatusById(int id, int status);

	ResultUtil updateUser(User user);

	User selUserByUsername(String username);

	void insertUser(User user);

	ResultUtil deleteUserById(int id);

}
