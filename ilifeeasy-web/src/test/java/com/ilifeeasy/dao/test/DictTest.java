package com.ilifeeasy.dao.test;

import java.util.List;

import org.junit.BeforeClass;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.junit.Test; 
import com.ilifeeasy.dao.sys.DictDao;
import com.ilifeeasy.entity.sys.Dict;

public class DictTest {
	
	private static DictDao dictDao =null;
	
	private static ApplicationContext context =null;

	@BeforeClass
	public static void init() {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
		dictDao = context.getBean(DictDao.class);
	}
	
	@Test
	public void findTypeList(){
		try {
			Dict dict=new Dict();
			List<Dict> list=dictDao.findAllList(dict);
			for(Dict dct:list){
				System.err.println(dct.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
