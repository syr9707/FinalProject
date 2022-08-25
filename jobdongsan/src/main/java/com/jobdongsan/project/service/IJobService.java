package com.jobdongsan.project.service;

import java.util.ArrayList;

import com.jobdongsan.project.model.JobVO;

public interface IJobService {
	
	public ArrayList<JobVO> listAllJob(); // 전체 직업 조회
	public JobVO detailViewJob(int jobNo); // 직업 상세 정보 조회

}
