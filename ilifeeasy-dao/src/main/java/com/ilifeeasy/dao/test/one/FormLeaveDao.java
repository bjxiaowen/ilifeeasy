package com.ilifeeasy.dao.test.one;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.test.one.FormLeave;

/**
 * 员工请假DAO接口
 * @author 　andy
 * @version 2016-01-15
 */
@MyBatisDao
public interface FormLeaveDao extends CrudDao<FormLeave> {
	
}