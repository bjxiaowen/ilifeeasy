package com.ilifeeasy.entity.answer;

import java.sql.Timestamp;
import java.util.Date;
import com.ilifeeasy.entity.common.DataEntity;

/**
 * 科目
 * @author xiangxiaowen
 *
 */
public class Course extends DataEntity<Course>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 747302085212010491L;
	
	private String id;
	
	private String majorId;
	
	private String majorName;
	
	private String courseName;
	
	private String publishing;
	
	private Date publishDate;
	
	private String author;
	
	private int dr;
	
	private Timestamp  ts;
	
	
	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public String getMajorId() {
		return majorId;
	}

	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getPublishing() {
		return publishing;
	}

	public void setPublishing(String publishing) {
		this.publishing = publishing;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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

	@Override
	public String toString() {
		return "Course [id=" + id + ", majorId=" + majorId + ", majorName="
				+ majorName + ", courseName=" + courseName + ", publishing="
				+ publishing + ", publishDate=" + publishDate + ", author="
				+ author + ", dr=" + dr + ", ts=" + ts + "]";
	}

}
