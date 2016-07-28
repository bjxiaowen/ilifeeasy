package com.ilifeeasy.service.answer.exam.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.answer.ExamDetailDao;
import com.ilifeeasy.entity.answer.ExamDetail;
import com.ilifeeasy.service.answer.exam.IExamDetailService;

@Service
public class ExamDetailService implements IExamDetailService {

	@Autowired
	private ExamDetailDao examDetailMapper;

	public List<ExamDetail> findByTitleId(String titleId) {
		return this.examDetailMapper.findByTitleId(titleId);
	}

	public ExamDetail findByDetailId(String detailId) {
		return this.examDetailMapper.findByDetailId(detailId);
	}

	public int addDetails(List<ExamDetail> detailList) {
		return this.examDetailMapper.addDetails(detailList);
	}

	public int updateExamDetail(ExamDetail examDetail) {
		return this.examDetailMapper.updateExamDetail(examDetail);
	}

	public int deleteExamDetail(String detailId) {
		return this.examDetailMapper.deleteExamDetail(detailId);
	}

	public List<ExamDetail> findErrorDetaill(String titleId) {
		return this.examDetailMapper.findErrorDetaill(titleId);
	}

}
