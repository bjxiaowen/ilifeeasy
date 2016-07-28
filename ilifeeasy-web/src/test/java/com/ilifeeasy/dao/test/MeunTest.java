package com.ilifeeasy.dao.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ilifeeasy.dao.sys.MenuDao;
import com.ilifeeasy.entity.sys.Menu;

public class MeunTest {

	private static ApplicationContext context =null;
	
	private static MenuDao menuDao=null;

	@BeforeClass
	public static void init() {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		menuDao = context.getBean(MenuDao.class);
	}
	
	@Test
	public  void findAllList(){
		try{
			List<Menu> lists=menuDao.findAllList(new Menu());
			for(Menu menu:lists){
				System.err.println(menu.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
