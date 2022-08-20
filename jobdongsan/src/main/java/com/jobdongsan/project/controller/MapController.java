package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	
	@RequestMapping("/map_index")
	public String map_index() {
		return "map/map_index";
	}
		
	@RequestMapping("/map_detail")
	public String map_detail() {
		return "map/map_detail";
	}
}
