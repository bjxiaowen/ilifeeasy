package com.ilifeeasy.dao.gen;

import org.apache.ibatis.annotations.Param;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.gen.GenTable;

@MyBatisDao
public abstract interface GenTableDao extends CrudDao<GenTable> {
	public abstract int buildTable(@Param("sql") String paramString);
}