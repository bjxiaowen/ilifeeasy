package com.ilifeeasy.utils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;

public class Pagination<T> implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6915503788920617731L;

	// 当前页数
	private int currPageNum;
	
	// 总页数
	private int totalPageNum;
	
	// 总个数
	private int totalCount;
	// 每页显示个数
	@JSONField(serialize = false)
	private int pageSize = 16;
	
	// 要显示的对象
	private List<T> list;
	
	// 当前页开始的行号
	@JSONField(serialize = false)
	private int startNum;
	
	// 当前页结束的行号
	@JSONField(serialize = false)
	private int endNum;

	
	/**
	 * 
	 * @Title: initPageParams 
	 * @Description: TODO 设置当前页,并初始化总页数
	 * @param @param currPageNum
	 * @return void
	 * @throws
	 */
	private void initPageParams(int currPageNum){
		this.totalPageNum=(this.totalCount + pageSize - 1)/pageSize;  
		setCurrPageNum(currPageNum);
		startNum=(this.currPageNum-1)*pageSize;
		endNum=(this.currPageNum)*pageSize;
		if(endNum>totalCount){
			endNum=totalCount;
		}
		if(startNum>totalCount){
			startNum=totalCount;
		}
	}
	
	public Pagination(int currPageNum, int totalCount) {
		this.totalCount = totalCount;
		initPageParams(currPageNum);
	}
	
	
	public Pagination(int currPageNum, int totalCount,int pageSize) {
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		initPageParams(currPageNum);
	}

	

	public Pagination() {
		super();
	}


	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurrPageNum() {
		return currPageNum;
	}
	public void setCurrPageNum(int currPageNum) {
		if(currPageNum>totalPageNum){
			currPageNum=totalPageNum;
		}
		if(currPageNum<1){
			currPageNum=1;
		}
		this.currPageNum = currPageNum;
	}
	public int getTotalPageNum() {
		return totalPageNum;
	}
	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	
	public void addList(T t){
		if(list==null){
			list=new ArrayList<T>();
		}
		list.add(t);
	}

}
