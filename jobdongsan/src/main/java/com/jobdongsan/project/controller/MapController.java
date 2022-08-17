package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	
	@RequestMapping("/map/mapIndexView")
	public String mapIndexView() {
		return "map/map_index";
	}
		
	@RequestMapping("/map/mapDetailView")
	public String mapDetailView() {
		return "map/map_detail";
	}
}
