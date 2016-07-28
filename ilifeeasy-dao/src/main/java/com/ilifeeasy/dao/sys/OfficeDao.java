package com.ilifeeasy.dao.sys;

import java.util.List;

import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.dao.common.TreeDao;
import com.ilifeeasy.entity.sys.Office;

/**
 * 机构DAO接口
 * 
 * @author Andy
 * @version 2016-03-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {

	public Office getByCode(String code);
	
	public List<Office> findAllList(Office office);
}
