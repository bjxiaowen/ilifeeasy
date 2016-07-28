package com.ilifeeasy.dao.sys;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.sys.Log;

/**
 * 日志DAO接口
 * 
 * @author Andy
 * @version 2016-03-17
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

	public void empty();
}
