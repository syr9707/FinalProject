package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IVideoDAO;
import com.jobdongsan.project.model.VideoVO;

@Service
public class VideoService implements IVideoService {
	@Autowired
	@Qualifier("IVideoDAO")
	IVideoDAO dao;

	@Override
	public ArrayList<VideoVO> listAllVideo() {
		return dao.listAllVideo();
	}

	@Override
	public ArrayList<VideoVO> listSubjectVideo(String videoCtg) {
		return dao.listSubjectVideo(videoCtg);
	}

	@Override
	public VideoVO detailViewVideo(int videoNo) {
		return dao.detailViewVideo(videoNo);
	}

	@Override
	public ArrayList<VideoVO> listSubjectNoVideo(int videoCtgNo) {
		return dao.listSubjectNoVideo(videoCtgNo);
	}

	@Override
	public void insertVideo(HashMap<String, Object> param) {
		dao.insertVideo(param);
	}

	@Override
	public int checkVideo(int videoNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("videoNo", videoNo);
		map.put("memId", memId);
		
		return dao.checkVideo(map);
	}

	@Override
	public void deleteVideo(int videoNo) {
		dao.deleteVideo(videoNo);
	}

}
