package com.ilifeeasy.dao.answer;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.answer.Domain;

/**
 * <p>
 * 领域管理
 * </p>
 * 
 * @author Andy
 * @Date 2015-04-30
 */
@MyBatisDao
public interface DomainDao extends CrudDao<Domain> {

	/**
	 * @title selectAll
	 * @Description 获取所有领域
	 * @return 所有的领域
	 */
	public List<Domain> selectAll();

	/**
	 * @title addDomain
	 * @Description 添加领域
	 * @param domain
	 *            领域信息
	 * @return 执行返回的行数
	 */
	public int addDomain(Domain domain);

	/**
	 * @title findById
	 * @Description 通过id查询领域
	 * @param domainId
	 *            领域id
	 * @return Domain 领域信息
	 */
	public Domain findById(String domainId);

	/**
	 * @title updateDomain
	 * @Description 修改领域
	 * @param domain
	 *            领域信息
	 * @return 执行返回的行数
	 */
	public int updateDomain(Domain domain);

	/**
	 * @title deleteDomain
	 * @Description 删除领域
	 * @param domainId
	 *            领域id
	 * @return 执行返回的行数
	 */
	public int deleteDomain(String domainId);

}
