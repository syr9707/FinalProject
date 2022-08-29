package com.jobdongsan.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.ResultVO;

public interface IResultDAO {
	public ArrayList<JobVO> ctgJob(); // 유형별 직업 가져오기
	public ArrayList<MapVO> ctgMap(); // 유형별 체험 장소 가져오기
	public void insertScore(HashMap<String, Object> map); 	// 유형 스코어 넣기
	public HashMap<String, Integer> getScore(); // 유형 스코어 가져오기
	public void insertPromise(ResultVO vo);	// 나의 다짐 넣기 
	
}
