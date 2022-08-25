package com.jobdongsan.project.service;

import java.util.ArrayList;

import com.jobdongsan.project.model.VideoVO;

public interface IVideoService {
	
	public ArrayList<VideoVO> listAllVideo(); // 전체 영상 조회
	public ArrayList<VideoVO> listSubjectVideo(String videoCtg); // 동일 카테고리 영상 조회
	public VideoVO detailViewVideo(int videoNo); // 영상 상세 정보 조회

}
