package com.jobdongsan.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IMyHistoryDAO;

@Service
public class MyHistoryService implements IMyHistoryService {
	@Autowired
	@Qualifier("IMyHistoryDAO")
	IMyHistoryDAO dao;
	
	@Override
	public Integer checkResultNo(String memId) {
		return dao.checkResultNo(memId);
	}

}
