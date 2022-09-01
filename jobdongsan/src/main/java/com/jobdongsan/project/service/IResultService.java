package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.ResultVO;

public interface IResultService {
	
	public void insertScore(HashMap<String, Object> map); 	// 유형 스코어 넣기
	public void updateScore(HashMap<String, Object> map);	// 유형 스코어 업데이트
	public HashMap<String, Integer> getScore(String memId); // 유형 스코어 가져오기
	public int getResultNo(String memId); // resultNo 가져오기
	public void insertCategory(HashMap<String, Object> map); // 가장 높은 스코어 유형 넣기
	public void insertResultNo(HashMap<String, Object> map); // 마이페이지에 resultNo 넣기
	public HashMap<String, Object> checkResultNo(String memId); // 마이페이지 resultNo 체크하기
	public ArrayList<JobVO> ctgJob(); // 유형별 직업 가져오기
	public ArrayList<MapVO> ctgMap(); // 유형별 체험 장소 가져오기
	public void insertPromise(ResultVO vo);	// 나의 다짐 넣기 
	
}
