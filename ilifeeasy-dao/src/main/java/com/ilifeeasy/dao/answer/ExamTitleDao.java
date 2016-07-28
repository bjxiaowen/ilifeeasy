package com.ilifeeasy.dao.answer;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.answer.ExamTitle;

/**
 * <p>
 * 试题明细信息
 * </p>
 * 
 * @author xiangxiaowen
 * @Date 2015-04-31
 */
@MyBatisDao
public interface ExamTitleDao extends CrudDao<ExamTitle> {

	/**
	 * @title findByCourseId
	 * @Description 通过科目id获取考题信息
	 * @param courseId
	 *            科目id
	 * @return List<ExamTitle> 考题信息list
	 */
	public List<ExamTitle> findByCourseId(String courseId);

	/**
	 * @title findById
	 * @Description 通过考题id获取题信息
	 * @param id
	 *            科目题id
	 * @return ExamTitle 考题信息
	 */
	public ExamTitle findById(String id);

	/**
	 * @title addExamTitle
	 * @Description 添加题信息
	 * @param ExamTitle
	 *            考题信息
	 * @return int 影响行数
	 */
	public int addExamTitle(ExamTitle examTitle);

	/**
	 * @title updateExamTitle
	 * @Description 修改题信息
	 * @param ExamTitle
	 *            考题信息
	 * @return int 影响行数
	 */
	public int updateExamTitle(ExamTitle examTitle);

	/**
	 * @title deleteExamTitle
	 * @Description 删除题信息
	 * @param ExamTitle
	 *            考题信息
	 * @return int 影响行数
	 */
	public int deleteExamTitle(String id);
}
