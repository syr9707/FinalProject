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
	public void insertScore(HashMap<String, Object> map) {
		dao.insertScore(map);
	}
	
	@Override
	public void updateScore(HashMap<String, Object> map) {
		dao.updateScore(map);
		
	}
	
	@Override
	public HashMap<String, Integer> getScore(String memId) {
		return dao.getScore(memId);
	}
	
	@Override
	public int getResultNo(String memId) {
		return dao.getResultNo(memId);
	}

	
	@Override
	public void insertCategory(HashMap<String, Object> map) {
		dao.insertCategory(map);	
	}
	
	@Override
	public void insertResultNo(HashMap<String, Object> map) {
		dao.insertResultNo(map);
	}
	
	@Override
	public HashMap<String, Object> checkResultNo(String memId) {
		return dao.checkResultNo(memId);
	}
	
	@Override
	public ArrayList<JobVO> ctgJob() {
		return dao.ctgJob();
	}

	@Override
	public ArrayList<MapVO> ctgMap() {
		return dao.ctgMap();
	}
	
	@Override
	public void insertPromise(ResultVO vo) {
		dao.insertPromise(vo);
	}

	@Override
	public ResultVO getMyPromise(String memId) {
		return dao.getMyPromise(memId);
	}

	@Override
	public void deleteResult(String memId) {
		dao.deleteResult(memId);
	}
}
