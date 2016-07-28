package com.ilifeeasy.dao.sys;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.sys.Dict;

/**
 * 字典DAO接口
 * 
 * @author Andy
 * @version 2016-03-17
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
	public List<Dict> findAllList(Dict dict);

}
