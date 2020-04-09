package com.weiqi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.weiqi.entity.User;
import com.weiqi.entity.UserSearch;
import com.weiqi.utils.ResultUtil;

public interface UserDao {

	List<User> getAllUserList(UserSearch search);

	User getUserById(int id);

	void updateUserStatusById(@Param("id")int id, @Param("status")int status);

	void updateUser(User user);

	User selUserByUsername(String username);

	void insertUser(User user);

	void deleteUserById(int id);

}
