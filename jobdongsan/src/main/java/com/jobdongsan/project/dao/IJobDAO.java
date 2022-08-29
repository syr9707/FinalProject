package com.jobdongsan.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MyHistoryVO;

public interface IJobDAO {
	
	public ArrayList<JobVO> listAllJob(); // 전체 직업 조회
	public JobVO detailViewJob(int jobNo); // 직업 상세 정보 조회
	public ArrayList<JobVO> jobSearch(HashMap<String, Object> map); // 직업 검색
	
	public void insertJob (HashMap<String, Object> param); // 관심 직업 담기
	int checkJob(HashMap<String, Object> map); // 동일 직업 존재 여부 체크
	void deleteJob (int jobNo); // 담아 놓은 관심 직업 삭제
	void updateJob(MyHistoryVO vo); // 찜직업 교체
	
	MyHistoryVO checkJobNo(String memId); // memId - jobNo가 둘 다 존재하는지 확인

}
