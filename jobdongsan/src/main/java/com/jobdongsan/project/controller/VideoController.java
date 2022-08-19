package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {
	@RequestMapping("/video")
	public String video() {
		return "video/video";
	}
	
	@RequestMapping("/videosubject")
	public String videosubject() {
		return "video/video_subject";
	}
	
	@RequestMapping("/videodetail")
	public String videodetail() {
		return "video/video_detail";
	}
}
