package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IResultDAO;
import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.ResultVO;

@Service
public class ResultService implements IResultService {
	
	@Autowired
	@Qualifier("IResultDAO")
	IResultDAO dao;

	
	@Override
	public ArrayList<JobVO> ctgJob() {
		return dao.ctgJob();
	}

	@Override
	public ArrayList<MapVO> ctgMap() {
		return dao.ctgMap();
	}
	
	@Override
	public void insertScore(HashMap<String, Object> map) {
		dao.insertScore(map);
	}
	
	@Override
	public HashMap<String, Integer> getScore() {
		return dao.getScore();
	}
	
	@Override
	public void insertPromise(ResultVO vo) {
		dao.insertPromise(vo);
	}

	

	

}
