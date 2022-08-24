package com.jobdongsan.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IResultDAO;
import com.jobdongsan.project.model.ResultVO;

@Service
public class ResultService implements IResultService {
	
	@Autowired
	@Qualifier("IResultDAO")
	IResultDAO dao;

	@Override
	public void insertPromise(ResultVO vo) {
		dao.insertPromise(vo);
		
	}

	@Override
	public void insertScore(ResultVO vo) {
		dao.insertScore(vo);
		
	}

}
