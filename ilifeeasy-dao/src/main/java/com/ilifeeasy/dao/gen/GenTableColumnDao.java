package com.ilifeeasy.dao.gen;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.gen.GenTable;
import com.ilifeeasy.entity.gen.GenTableColumn;

@MyBatisDao
public abstract interface GenTableColumnDao extends CrudDao<GenTableColumn> {
	public abstract void deleteByGenTable(GenTable paramGenTable);
}