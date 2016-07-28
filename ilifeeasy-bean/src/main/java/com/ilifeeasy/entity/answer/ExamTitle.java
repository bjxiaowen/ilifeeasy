package com.ilifeeasy.entity.answer;

import java.sql.Timestamp;
import java.util.Date;

import com.ilifeeasy.entity.common.DataEntity;
/**
 * 试题头信息
 * @author xiangxiaowen
 *
 */
public class ExamTitle extends DataEntity<ExamTitle>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4095319055076059023L;
	
	private String id;
	
	private String courseId;
	
	private String courseName;
	
	private String examName;
	
	/**
	 * 练习类型：01：历年考题，02：模拟题，03：课后题
	 */
	private String examType;
	
	private Date createTime;
	
	private Date examDate;
	
	private String userId;
	
	private String userName;
	
	private int viewCount;
	
	private int answerCount;
	
	private int examScore;
	
	private int passScore;
	
	private int size;
	
	private int dr;
	
	private Timestamp  ts;
	
	
	public int getExamScore() {
		return examScore;
	}

	public void setExamScore(int examScore) {
		this.examScore = examScore;
	}

	public int getPassScore() {
		return passScore;
	}

	public void setPassScore(int passScore) {
		this.passScore = passScore;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getExamType() {
		return examType;
	}

	public void setExamType(String examType) {
		this.examType = examType;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
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

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(int answerCount) {
		this.answerCount = answerCount;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
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
	
	
	
	public Date getExamDate() {
		return examDate;
	}

	public void setExamDate(Date examDate) {
		this.examDate = examDate;
	}

	@Override
	public String toString() {
		return "ExamTitle [id=" + id + ", courseId=" + courseId
				+ ", courseName=" + courseName + ", examName=" + examName
				+ ", examType=" + examType + ", createTime=" + createTime
				+ ", examDate=" + examDate + ", userId=" + userId
				+ ", userName=" + userName + ", viewCount=" + viewCount
				+ ", answerCount=" + answerCount + ", examScore=" + examScore
				+ ", passScore=" + passScore + ", size=" + size + ", dr=" + dr
				+ ", ts=" + ts + "]";
	}

}
