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
	
	// 아이디 찾기, 비밀번호 찾기 테스트
	
	@RequestMapping("/findid")
	public String findIdlView() {
		return "member/find_id";
	}
	
	@RequestMapping("/findpw")
	public String findPwlView() {
		return "member/find_pw";
	}
	
	@RequestMapping("/findidresult")
	public String findIdResultlView() {
		return "member/find_id_result";
	}
	
	@RequestMapping("/findpwresult")
	public String findPwResultlView() {
		return "member/find_pw_result";
	}
}
