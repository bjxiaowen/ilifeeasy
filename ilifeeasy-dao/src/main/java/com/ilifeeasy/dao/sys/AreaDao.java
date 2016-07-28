package com.ilifeeasy.dao.sys;

import java.util.List;

import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.dao.common.TreeDao;
import com.ilifeeasy.entity.sys.Area;

/**
 * 区域DAO接口
 * 
 * @author Andy
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
	public List<Area> findAllList(Area area);

}
