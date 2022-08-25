package com.jobdongsan.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.service.MapService;

@Controller
public class MapController {

	@Autowired
	MapService mapService;

	/*
	 * @RequestMapping("/map_index") public String map_index() { return
	 * "map/map_index"; }
	 */

	/*
	 * @RequestMapping("/map_detail") public String map_detail() { return
	 * "map/map_detail"; }
	 */

	// 테스트 - 전체 직업 체험 장소 리스트
	/*
	 * @RequestMapping("/listAllMap") public String listAllMapView(Model model) {
	 * ArrayList<MapVO> mapList = mapService.listAllMap();
	 * 
	 * model.addAttribute("mapList", mapList);
	 * 
	 * return "map/listAllMapView"; }
	 */

	// 전체 직업 체험 장소 리스트
	@RequestMapping("/map_index")
	public String listAllMapView(Model model) {
		ArrayList<MapVO> mapList = mapService.listAllMap();
		model.addAttribute("mapList", mapList);
		return "map/map_index";
	}

	// 맵 상세 정보 출력
	@RequestMapping("/map_detail/{mapJobNo}")
	public String detailMapView(@PathVariable int mapJobNo, Model model) {
		MapVO map = mapService.detailMapView(mapJobNo);
		model.addAttribute("map", map);
		return "map/map_detail";
	}

}
