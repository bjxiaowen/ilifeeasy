package com.ilifeeasy.service.answer.exam.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.answer.ExamTitleDao;
import com.ilifeeasy.entity.answer.ExamTitle;
import com.ilifeeasy.service.answer.exam.IExamTitleService;

@Service
public class ExamTitleService implements IExamTitleService {

	@Autowired
	private ExamTitleDao examTitleMapper;

	public List<ExamTitle> findByCourseId(String courseId) {
		return examTitleMapper.findByCourseId(courseId);
	}

	public ExamTitle findById(String id) {
		return examTitleMapper.findById(id);
	}

	public int addExamTitle(ExamTitle examTitle) {
		return examTitleMapper.addExamTitle(examTitle);
	}

	public int updateExamTitle(ExamTitle examTitle) {
		return examTitleMapper.updateExamTitle(examTitle);
	}

	public int deleteExamTitle(String id) {
		return examTitleMapper.deleteExamTitle(id);
	}

}
