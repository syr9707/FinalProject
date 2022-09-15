package com.jobdongsan.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IMyHistoryDAO;
import com.jobdongsan.project.model.CategoryVO;
import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.VideoVO;

@Service
public class MyHistoryService implements IMyHistoryService {
	@Autowired
	@Qualifier("IMyHistoryDAO")
	IMyHistoryDAO dao;
	
	@Override
	public Integer checkResultNo(String memId) {
		return dao.checkResultNo(memId);
	}
	
	@Override
	public ArrayList<VideoVO> getMyVideo(String memId) {
		return dao.getMyVideo(memId);
	}

	@Override
	public ArrayList<MapVO> getMyMap(String memId) {
		return dao.getMyMap(memId);
	}
	
	@Override
	public int getMyCtgNum(String memId) {
		return dao.getMyCtgNum(memId);
	}

	@Override
	public CategoryVO getMyCtg(String memId) {
		return dao.getMyCtg(memId);
	}

	@Override
	public String checkMyPromise(String memId) {
		return dao.checkMyPromise(memId);
	}
	
	@Override
	public JobVO getMyJob(String memId) {
		return dao.getMyJob(memId);
	}

	@Override
	public void deleteMyHistory(String memId) {
		dao.deleteMyHistory(memId);
	}

	@Override
	public String getMyProfileImg(String memId) {
		return dao.getMyProfileImg(memId);
	}
}
