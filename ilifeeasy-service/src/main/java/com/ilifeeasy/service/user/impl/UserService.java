package com.ilifeeasy.service.user.impl;

import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.user.UserMapper;
import com.ilifeeasy.entity.sys.User;
import com.ilifeeasy.service.user.IUserService;

@Service
public class UserService implements IUserService {

	private final static Logger logger = Logger.getLogger(UserService.class);

	@Autowired
	private UserMapper userMapper;

	public List<User> getAllUsers() {
		return this.userMapper.getAllUsers();
	}

	public User createUser(User user) {
		logger.info(user);
		userMapper.insert(user);
		return user;
	}

	public void changePassword(String userId, String newPassword) {
		User user = new User();
		user.setId(userId);
		user.setPassword(newPassword);
		userMapper.updateByPrimaryKeySelective(user);
	}

	public void correlationRoles(String userId, Long... roleIds) {

	}

	public void uncorrelationRoles(String userId, Long... roleIds) {

	}

	public User findByUsername(String username) {
		return userMapper.findByUsername(username);
	}

	public Set<String> findRoles(String username) {
		return userMapper.findRoles(username);
	}

	public Set<String> findPermissions(String username) {
		return userMapper.findPermissions(username);
	}

	public User checkEmail(String email) {
		return null;
	}

	public User checkTel(String tel) {
		return null;
	}

	public void uncorrelationRoles(int userId, Long... roleIds) {

	}

}
