package com.ilifeeasy.dao.answer;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.answer.Major;

/**
 * <p>
 * 专业管理
 * </p>
 * 
 * @author xiangxiaowen
 * @data 2015-04-30
 */
@MyBatisDao
public interface MajorDao extends CrudDao<Major> {

	/**
	 * @title findByDomainId
	 * @Description 通过领域id查询专业
	 * @param domainId
	 *            领域id
	 * @return 专业list
	 */
	public List<Major> findByDomainId(String domainId);

	/**
	 * @title findById
	 * @Description 通过专业id查询专业
	 * @param majorId
	 * @return 专业
	 */
	public Major findById(String majorId);

	/**
	 * @title addMajor
	 * @Description 添加专业
	 * @param major
	 *            专业
	 * @return 影响的行数
	 */
	public int addMajor(Major major);

	/**
	 * @title updateMajor
	 * @Description 修改专业
	 * @param major
	 *            专业
	 * @return 影响的行数
	 */
	public int updateMajor(Major major);

	/**
	 * @title deleteMajor
	 * @Description 删除专业
	 * @param major
	 *            专业
	 * @return 影响的行数
	 */
	public int deleteMajor(String majorId);
}
