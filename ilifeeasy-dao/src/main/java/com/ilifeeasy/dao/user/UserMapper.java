package com.ilifeeasy.dao.user;

import java.util.List;
import java.util.Set;

import com.ilifeeasy.entity.sys.User;

public interface UserMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	List<User> getAllUsers();

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	public User findByUsername(String username);

	/**
	 * 根据用户名查找其角色
	 * 
	 * @param username
	 * @return
	 */
	public Set<String> findRoles(String username);

	/**
	 * 根据用户名查找其权限
	 * 
	 * @param username
	 * @return
	 */
	public Set<String> findPermissions(String username);

	/**
	 * 根据邮箱查询用户信息
	 * 
	 * @param email
	 * @return
	 */
	public User checkEmail(String email);

	/**
	 * 根据电话号码查询
	 * 
	 * @param tel
	 * @return
	 */
	public User checkTel(String tel);

}