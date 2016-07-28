package com.ilifeeasy.dao.answer;

import java.util.List;

import com.ilifeeasy.dao.common.CrudDao;
import com.ilifeeasy.dao.common.MyBatisDao;
import com.ilifeeasy.entity.answer.Course;

/**
 * <p>
 * 课程管理
 * </p>
 * 
 * @author Andy
 * @Date 2015-04-31
 */
@MyBatisDao
public interface CourseDao extends CrudDao<Course> {

	/**
	 * @title findByMajorId
	 * @Description 通过专业id获取科目
	 * @param maJorId
	 *            专业id
	 * @return List<Course> 获取科目list
	 */
	public List<Course> findByMajorId(String majorId);

	/**
	 * @title findById
	 * @Description 通过科目id获取科目
	 * @param id
	 *            科目id
	 * @return Course 科目
	 */
	public Course findById(String id);

	/**
	 * @title addCourse
	 * @Description 添加科目
	 * @param Course
	 *            科目
	 * @return int 影响的行数
	 */
	public int addCourse(Course course);

	/**
	 * @title updateCourse
	 * @Description 修改科目
	 * @param Course
	 *            科目
	 * @return int 影响的行数
	 */
	public int updateCourse(Course course);

	/**
	 * @title deleteCourse
	 * @Description 删除科目
	 * @param courseId
	 *            科目id
	 * @return int 影响的行数
	 */
	public int deleteCourse(String courseId);
}
