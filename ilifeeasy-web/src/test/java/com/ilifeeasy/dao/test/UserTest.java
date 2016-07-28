package com.ilifeeasy.dao.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ilifeeasy.dao.sys.UserDao;
import com.ilifeeasy.entity.sys.User;

public class UserTest {

	private static UserDao userDao =null;
	
	private static ApplicationContext context =null;

	@BeforeClass
	public static void init() {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		userDao = context.getBean(UserDao.class);
	}
	
	@Test
	public void getByLoginName(){
		try {
			User user=userDao.getByLoginName(new User(null, "admin"));
			System.err.println(user.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
