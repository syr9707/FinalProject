package com.jobdongsan.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IMapDAO;
import com.jobdongsan.project.model.MapVO;

@Service
public class MapService implements IMapService {

	@Autowired
	@Qualifier("IMapDAO")
	IMapDAO dao;

	// 전체 직업 체험 장소 리스트
	@Override
	public ArrayList<MapVO> listAllMap() {
		return dao.listAllMap();
	}
	
	// 맵 상세 정보 출력
	@Override
	public MapVO detailMapView(int mapJobNo) {
		return dao.detailMapView(mapJobNo);
	}

}
