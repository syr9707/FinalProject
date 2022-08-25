package com.jobdongsan.project.dao;

import java.util.ArrayList;

import com.jobdongsan.project.model.VideoVO;

public interface IVideoDAO {
	
	public ArrayList<VideoVO> listAllVideo(); // 전체 영상 조회
	public ArrayList<VideoVO> listSubjectVideo(String videoCtg); // 동일 카테고리 영상 조회 (문자 버전)
	public VideoVO detailViewVideo(int videoNo); // 영상 상세 정보 조회
	public ArrayList<VideoVO> listSubjectNoVideo(int videoCtgNo); // 동일 카테고리 영상 조회 (숫자 버전)
	
}
