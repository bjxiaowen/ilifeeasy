package com.ilifeeasy.service.answer.exam.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.answer.ExamErrorDao;
import com.ilifeeasy.entity.answer.ExamError;
import com.ilifeeasy.service.answer.exam.IExamErrorService;

@Service
public class ExamErrorService implements IExamErrorService {

	@Autowired
	private ExamErrorDao examErrorMapper;

	public int addExamError(ExamError examError) {
		return this.examErrorMapper.addExamError(examError);
	}

	public int deleteExamError(String errorId) {
		return this.examErrorMapper.deleteExamError(errorId);
	}

}
