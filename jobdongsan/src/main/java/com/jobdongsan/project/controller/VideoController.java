package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {
	@RequestMapping("/video_index")
	public String video_index() {
		return "video/video_index";
	}
	
	@RequestMapping("/video_subject")
	public String video_subject() {
		return "video/video_subject";
	}
	
	@RequestMapping("/video_detail")
	public String video_detail() {
		return "video/video_detail";
	}
}
