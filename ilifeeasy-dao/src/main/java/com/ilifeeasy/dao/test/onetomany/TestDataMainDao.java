package com.ilifeeasy.dao.test.onetomany;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.test.onetomany.TestDataMain;

/**
 * 票务代理DAO接口
 * @author andy
 * @version 2016-01-15
 */
@MyBatisDao
public interface TestDataMainDao extends CrudDao<TestDataMain> {
	
}