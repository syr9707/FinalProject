package com.jobdongsan.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jobdongsan.project.model.VideoVO;

public interface IVideoDAO {
	
	public ArrayList<VideoVO> listAllVideo(); // 전체 영상 조회
	public ArrayList<VideoVO> listSubjectVideo(String videoCtg); // 동일 카테고리 영상 조회 (문자 버전)
	public VideoVO detailViewVideo(int videoNo); // 영상 상세 정보 조회
	public ArrayList<VideoVO> listSubjectNoVideo(int videoCtgNo); // 동일 카테고리 영상 조회 (숫자 버전)
	
	public void insertVideo(HashMap<String, Object> param); // 관심 영상 담기
	int checkVideo(HashMap<String, Object> map); // 동일 영상 존재 여부 체크
	void deleteVideo(int videoNo); // 담아 놓은 관심 영상 삭제
	
}
