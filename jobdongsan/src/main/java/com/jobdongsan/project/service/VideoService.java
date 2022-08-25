package com.jobdongsan.project.service;

import java.util.ArrayList;

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

}
