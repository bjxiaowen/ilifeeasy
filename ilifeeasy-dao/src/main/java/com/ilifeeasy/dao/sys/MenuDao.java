package com.ilifeeasy.dao.sys;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.sys.Menu;

/**
 * 菜单DAO接口
 * 
 * @author Andy
 * @version 2016-03-16
 */
@MyBatisDao
public interface MenuDao extends CrudDao<Menu> {

	public List<Menu> findByParentIdsLike(Menu menu);

	public List<Menu> findByUserId(Menu menu);
	
	public List<Menu> findAllList(Menu menu);

	public int updateParentIds(Menu menu);

	public int updateSort(Menu menu);

}
