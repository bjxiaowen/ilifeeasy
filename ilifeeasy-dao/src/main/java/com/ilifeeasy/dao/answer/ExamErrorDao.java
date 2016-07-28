package com.ilifeeasy.dao.answer;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.answer.ExamError;

/**
 * <p>
 * 错题试题信息
 * </p>
 * 
 * @author xiangxiaowen
 * @Date 2015-04-31
 */
@MyBatisDao
public interface ExamErrorDao extends CrudDao<ExamError> {

	/**
	 * @title addExamError
	 * @Description 添加错题信息
	 * @param examError
	 *            错题信息
	 * @return int 影响行数
	 */
	public int addExamError(ExamError examError);

	/**
	 * @title deleteExamError
	 * @Description 通过错题删除
	 * @param errorId
	 *            错题题id
	 * @return int 影响行数
	 */
	public int deleteExamError(String errorId);
}
