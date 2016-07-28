package com.ilifeeasy.entity.answer;

import java.sql.Timestamp;

import com.ilifeeasy.entity.common.DataEntity;

/**
 * 错题库
 * @author xiangxiaowen
 */
public class ExamError extends DataEntity<ExamError>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6743627990294766229L;

	private String id;
	
	private String userId;
	
	private String userName;
	
	private String courseId;
	
	private String courseName;
	
	private String examTitleId;
	
	private String examDetailId;
	
	private Timestamp examDate;
	
	private int dr;
	
	private Timestamp ts;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getExamDetailId() {
		return examDetailId;
	}

	public void setExamDetailId(String examDetailId) {
		this.examDetailId = examDetailId;
	}

	public int getDr() {
		return dr;
	}

	public void setDr(int dr) {
		this.dr = dr;
	}

	public Timestamp getTs() {
		return ts;
	}

	public void setTs(Timestamp ts) {
		this.ts = ts;
	}

	public String getExamTitleId() {
		return examTitleId;
	}

	public void setExamTitleId(String examTitleId) {
		this.examTitleId = examTitleId;
	}

	public Timestamp getExamDate() {
		return examDate;
	}

	public void setExamDate(Timestamp examDate) {
		this.examDate = examDate;
	}

	@Override
	public String toString() {
		return "ExamError [id=" + id + ", userId=" + userId + ", userName="
				+ userName + ", courseId=" + courseId + ", courseName="
				+ courseName + ", examTitleId=" + examTitleId
				+ ", examDetailId=" + examDetailId + ", examDate=" + examDate
				+ ", dr=" + dr + ", ts=" + ts + "]";
	}

	
}
