package com.ilifeeasy.dao.common;

import java.util.List;

import com.ilifeeasy.entity.common.TreeEntity;

/**
 * DAO支持类实现
 * 
 * @author Andy
 * @version 2016-03-18
 * @param <T>
 */
public interface TreeDao<T extends TreeEntity<T>> extends CrudDao<T> {

	/**
	 * 找到所有子节点
	 * 
	 * @param entity
	 * @return
	 */
	public List<T> findByParentIdsLike(T entity);

	/**
	 * 更新所有父节点字段
	 * 
	 * @param entity
	 * @return
	 */
	public int updateParentIds(T entity);

}