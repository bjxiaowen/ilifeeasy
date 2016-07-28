package com.ilifeeasy.service.answer.exam;

import java.util.List;

import com.ilifeeasy.entity.answer.ExamDetail;

/**
 * <p>试题明细信息</p> 
 * @author xiangxiaowen
 * @Date 2015-04-31
 */
public interface IExamDetailService {
	

	/**
	 * @title findByTitleId
	 * @Description 通过考题id获取考题明细
	 * @param titleId 考题id
	 * @return List<ExamDetail> 考题明细
	 */
	public List<ExamDetail> findByTitleId(String titleId);
	
	/**
	 * @title findByDetailId
	 * @Description 获取考题明细
	 * @param detailId 明细id
	 * @return ExamDetail 考题明细
	 */
	public ExamDetail findByDetailId(String detailId);
	
	/**
	 * @title addDetails
	 * @Description 添加考题明细
	 * @param detailList 明细List
	 * @return int 影响行数
	 */
	public int addDetails(List<ExamDetail> detailList);
	
	/**
	 * @title updateExamDetail
	 * @Description 修改考题明细
	 * @param examDetail 明细信息
	 * @return int 影响行数
	 */
	public int updateExamDetail(ExamDetail examDetail);
	
	
	/**
	 * @title updateExamDetail
	 * @Description 修改考题明细
	 * @param examDetail 明细信息
	 * @return int 影响行数
	 */
	public int deleteExamDetail(String detailId);
	
	/**
	 * @title findErrorDetaill
	 * @Description 通过考题id获取错题明细
	 * @param titleId 考题id
	 * @return List<ExamDetail> 考题明细
	 */
	public List<ExamDetail> findErrorDetaill(String titleId);
}
