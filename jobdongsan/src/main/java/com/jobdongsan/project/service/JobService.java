package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IJobDAO;
import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MyHistoryVO;

@Service
public class JobService implements IJobService {
	@Autowired
	@Qualifier("IJobDAO")
	IJobDAO dao;

	@Override
	public JobVO detailViewJob(int jobNo) {
		return dao.detailViewJob(jobNo);
	}

	@Override
	public ArrayList<JobVO> listAllJob() {
		return dao.listAllJob();
	}

	@Override
	public ArrayList<JobVO> jobSearch(String jobName) {
		return dao.jobSearch(jobName);
	}

	@Override
	public void jobInsert(MyHistoryVO vo) {
		dao.jobInsert(vo);
	}

	@Override
	public int jobCheck(String jobNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("jobNo", jobNo);
		map.put("memId", memId);
		
		return dao.jobCheck(map);
	}

	@Override
	public void jobDelete(int jobNo) {
		dao.jobDelete(jobNo);
	}

}
