package com.jobdongsan.project.model;

public class VideoVO {
	private int videoNo;
	private String videoName;
	private String videoName2;
	private String videoCtg;
	private String videoThumbnail;
	private String videoLink;
	private String videoStory;
	private String categoryNo;
	
	// DB 테이블에는 없지만
	// Mapper에서 받아서 View에 출력할 때 사용할 필드
	private String categoryName;
	private String categoryImg;
	
	
	public int getVideoNo() {
		return videoNo;
	}
	public void setVideoNo(int videoNo) {
		this.videoNo = videoNo;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public String getVideoName2() {
		return videoName2;
	}
	public void setVideoName2(String videoName2) {
		this.videoName2 = videoName2;
	}
	public String getVideoCtg() {
		return videoCtg;
	}
	public void setVideoCtg(String videoCtg) {
		this.videoCtg = videoCtg;
	}
	public String getVideoThumbnail() {
		return videoThumbnail;
	}
	public void setVideoThumbnail(String videoThumbnail) {
		this.videoThumbnail = videoThumbnail;
	}
	public String getVideoLink() {
		return videoLink;
	}
	public void setVideoLink(String videoLink) {
		this.videoLink = videoLink;
	}
	public String getVideoStory() {
		return videoStory;
	}
	public void setVideoStory(String videoStory) {
		this.videoStory = videoStory;
	}
	public String getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(String categoryNo) {
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
