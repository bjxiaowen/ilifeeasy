package com.ilifeeasy.dao.gen;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.gen.GenTable;
import com.ilifeeasy.entity.gen.GenTableColumn;

@MyBatisDao
public abstract interface GenDataBaseDictDao extends CrudDao<GenTableColumn> {
	public abstract List<GenTable> findTableList(GenTable paramGenTable);

	public abstract List<GenTableColumn> findTableColumnList(GenTable paramGenTable);

	public abstract List<String> findTablePK(GenTable paramGenTable);
}