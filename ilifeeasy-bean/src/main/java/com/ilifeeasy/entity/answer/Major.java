package com.ilifeeasy.entity.answer;

import java.sql.Timestamp;
import com.ilifeeasy.entity.common.DataEntity;

/**
 * 专业
 * @author xiangxiaowen
 *
 */
public class Major extends DataEntity<Major>{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -3639341256319467785L;
	
	private String id;
	
	private String domainId;
	
	private String domainName;
	
	private String majorName;
	
	private int dr;
	
	private Timestamp ts;
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDomainId() {
		return domainId;
	}

	public void setDomainId(String domainId) {
		this.domainId = domainId;
	}

	public String getDomainName() {
		return domainName;
	}

	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
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
		return "Major [id=" + id + ", domainId=" + domainId + ", domainName="
				+ domainName + ", majorName=" + majorName + ", dr=" + dr
				+ ", ts=" + ts + "]";
	}
}
