package com.jobdongsan.project.dao;

import java.util.ArrayList;

import com.jobdongsan.project.model.CategoryVO;
import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.VideoVO;

public interface IMyHistoryDAO {
	public Integer checkResultNo(String memId);	
	public ArrayList<VideoVO> getMyVideo(String memId);	// 마이페이지로 찜영상 가져오기
	public ArrayList<MapVO> getMyMap(String memId); 	// 마이페이지로 찜장소 가져오기
	public int getMyCtgNum(String memId);				// 마이페이지로 내 유형 번호 가져오기
	public CategoryVO getMyCtg(String memId);			// 마이페이지로 내 유형 가져오기
	public String checkMyPromise(String memId);			// 나의 다짐 유무 체크
	public JobVO getMyJob(String memId);				// 마이페이지로 찜직업 가져오기
	public void deleteMyHistory(String memId);			// 회원 탈퇴를 위한 마이페이지 내역 삭제
	public String getMyProfileImg(String memId);		// 마이페이지로 프로필사진 가져오기
}
