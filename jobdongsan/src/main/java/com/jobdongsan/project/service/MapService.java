package com.jobdongsan.project.service;

import java.util.ArrayList;
import java.util.HashMap;

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
	
	@Override
	public void insertMap(HashMap<String, Object> param) {
		dao.insertMap(param);
	}
	
	@Override
	public int checkMap(int mapJobNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mapJobNo", mapJobNo);
		map.put("memId", memId);
		
		return dao.checkMap(map);
	}
	
	@Override
	public void deleteMap(int mapJobNo) {
		dao.deleteMap(mapJobNo);
	}

}
