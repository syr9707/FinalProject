package com.jobdongsan.project.model;

public class JobVO {
	private int jobNo;
	private String jobName;
	private String jobInfo;
	private String jobImg;
	private String jobWork;
	private String jobHow;
	private String jobNeeds;
	private String jobValues;
	private String jobCtg;
	private int categoryNo;
	
	// DB 테이블에는 없지만
	// Mapper에서 받아서 View에 출력할 때 사용할 필드
	private String categoryName;
	private String categoryImg;
	
	
	public int getJobNo() {
		return jobNo;
	}
	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getJobInfo() {
		return jobInfo;
	}
	public void setJobInfo(String jobInfo) {
		this.jobInfo = jobInfo;
	}
	public String getJobImg() {
		return jobImg;
	}
	public void setJobImg(String jobImg) {
		this.jobImg = jobImg;
	}
	public String getJobWork() {
		return jobWork;
	}
	public void setJobWork(String jobWork) {
		this.jobWork = jobWork;
	}
	public String getJobHow() {
		return jobHow;
	}
	public void setJobHow(String jobHow) {
		this.jobHow = jobHow;
	}
	public String getJobNeeds() {
		return jobNeeds;
	}
	public void setJobNeeds(String jobNeeds) {
		this.jobNeeds = jobNeeds;
	}
	public String getJobValues() {
		return jobValues;
	}
	public void setJobValues(String jobValues) {
		this.jobValues = jobValues;
	}
	public String getJobCtg() {
		return jobCtg;
	}
	public void setJobCtg(String jobCtg) {
		this.jobCtg = jobCtg;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryImg() {
		return categoryImg;
	}
	public void setCategoryImg(String categoryImg) {
		this.categoryImg = categoryImg;
	}
	
}
