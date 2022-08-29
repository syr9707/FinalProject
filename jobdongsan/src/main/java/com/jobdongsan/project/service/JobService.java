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
	public void deleteJob(int jobNo) {
		dao.deleteJob(jobNo);
	}

	@Override
	public ArrayList<JobVO> jobSearch(HashMap<String, Object> map) {
		return dao.jobSearch(map);
	}

	@Override
	public void insertJob(HashMap<String, Object> param) {
		dao.insertJob(param);
	}

	@Override
	public int checkJob(int jobNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("jobNo", jobNo);
		map.put("memId", memId);
		
		return dao.checkJob(map);
	}

	@Override
	public void updateJob(MyHistoryVO vo) {
		dao.updateJob(vo);
	}

}
