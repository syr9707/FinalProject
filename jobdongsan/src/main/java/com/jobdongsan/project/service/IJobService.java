package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MyHistoryVO;

public interface IJobService {
	
	public ArrayList<JobVO> listAllJob(); // 전체 직업 조회
	public JobVO detailViewJob(int jobNo); // 직업 상세 정보 조회
	public ArrayList<JobVO> jobSearch(HashMap<String, Object> map); // 직업 검색
	
	void jobInsert(MyHistoryVO vo); // 마이페이지에 직업 찜하기 추가
	int jobCheck(String jobNo, String memId); // 동일 직업 존재 여부 확인
	void jobDelete(int jobNo); // 마이페이지에 삭제 후...

}
