package com.jobdongsan.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IJobDAO;
import com.jobdongsan.project.model.JobVO;

@Service
public class JobService implements IJobService {
	@Autowired
	@Qualifier("IJobDAO")
	IJobDAO dao;

	@Override
	public JobVO detailViewJob(int jobNo) {
		return dao.detailViewJob(jobNo);
	}

}
