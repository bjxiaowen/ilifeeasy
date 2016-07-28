package com.ilifeeasy.service.answer.course.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ilifeeasy.dao.answer.CourseDao;
import com.ilifeeasy.entity.answer.Course;
import com.ilifeeasy.service.answer.course.ICourseService;

@Service
public class CourseService implements ICourseService {

	@Autowired
	private CourseDao courseMapper;

	public List<Course> findByMajorId(String majorId) {
		return this.courseMapper.findByMajorId(majorId);
	}

	public Course findById(String id) {
		return this.courseMapper.findById(id);
	}

	public int addCourse(Course course) {
		return this.courseMapper.addCourse(course);
	}

	public int updateCourse(Course course) {
		return this.courseMapper.updateCourse(course);
	}

	public int deleteCourse(String courseId) {
		return this.courseMapper.deleteCourse(courseId);
	}

}
