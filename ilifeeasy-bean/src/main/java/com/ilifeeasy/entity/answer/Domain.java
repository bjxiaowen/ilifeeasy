package com.ilifeeasy.entity.answer;

import java.sql.Timestamp;
import com.ilifeeasy.entity.common.DataEntity;

/**
 * 领域
 * @author xiangxiaowen
 *
 */
public class Domain extends DataEntity<Domain>{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4652757043977665445L;

	private String id;
	
	private String userId;
	
	private String userName;
	
	private String domainName;
	
	private Timestamp createTime;
	
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

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
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
	

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getDomainName() {
		return domainName;
	}

	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}

	@Override
	public String toString() {
		return "Domain [id=" + id + ", userId=" + userId + ", userName="
				+ userName + ", domainName=" + domainName + ", createTime="
				+ createTime + ", dr=" + dr + ", ts=" + ts + "]";
	}
	
	

}
