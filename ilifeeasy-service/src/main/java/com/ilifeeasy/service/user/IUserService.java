package com.ilifeeasy.service.user;

import java.util.List;
import java.util.Set;

import com.ilifeeasy.entity.sys.User;

public interface IUserService {
	/**
	 * 根据条件查询用户List
	 * 
	 * @param searchModel
	 * @return
	 */
	public List<User> getAllUsers();

	/**
	 * 创建用户
	 * 
	 * @param user
	 */
	public User createUser(User user);

	/**
	 * 修改密码
	 * 
	 * @param userId
	 * @param newPassword
	 */
	public void changePassword(String userId, String newPassword);

	/**
	 * 添加用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	public void correlationRoles(String userId, Long... roleIds);

	/**
	 * 移除用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	public void uncorrelationRoles(int userId, Long... roleIds);

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	public User findByUsername(String username);

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

}
