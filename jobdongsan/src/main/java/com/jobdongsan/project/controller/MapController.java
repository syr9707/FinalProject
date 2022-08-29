package com.jobdongsan.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.service.MapService;

@Controller
public class MapController {

	@Autowired
	MapService mapService;

	// 전체 직업 체험 장소 리스트
	@RequestMapping("/map_index")
	public String listAllMapView(Model model) {
		ArrayList<MapVO> mapList = mapService.listAllMap();
		model.addAttribute("mapList", mapList);
		return "map/map_index";
	}

	// 맵 상세 정보 출력
	@RequestMapping("/map_detail/{mapJobNo}")
	public String detailMapView(@PathVariable int mapJobNo, HttpSession session, Model model) {
		MapVO map = mapService.detailMapView(mapJobNo);
		model.addAttribute("map", map);

		String memId = (String) session.getAttribute("sid");
		model.addAttribute("memId", memId);

		return "map/map_detail";
	}

	// 체험 장소 찜하기
	@ResponseBody
	@RequestMapping("/insert_map")
	public String insertMap(@RequestParam HashMap<String, Object> param, HttpSession session) {
		String result = null;
		String memId = (String) session.getAttribute("sid");
		param.put("memId", memId);
		
		int count = mapService.checkMap(Integer.parseInt((String) param.get("mapJobNo")), memId);
		System.out.println(count);
		System.out.println(memId);
		System.out.println(Integer.parseInt((String) param.get("mapJobNo")));
		if (count == 0) {
			mapService.insertMap(param);
			result = "0";
		} else {
			result = "1";
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/delete_map")
	public String deleteMap(@RequestParam HashMap<String, Object> param) {
		
		int mapJobNo = Integer.parseInt((String) param.get("mapJobNo"));
		mapService.deleteMap(mapJobNo);

		return "1";
	}

}
