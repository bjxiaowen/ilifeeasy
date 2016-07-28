package com.ilifeeasy.dao.test.tree;

import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.dao.common.TreeDao;
import com.ilifeeasy.entity.test.tree.TestTree;

/**
 * 组织机构DAO接口
 * @author andy
 * @version 2016-01-15
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}