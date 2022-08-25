package com.jobdongsan.project.dao;

import java.util.ArrayList;

import com.jobdongsan.project.model.MapVO;

public interface IMapDAO {
	
	public ArrayList<MapVO> listAllMap(); // 전체 직업 체험 장소 리스트
	public MapVO detailMapView(int mapJobNo); // 맵 상세 정보 출력

}
