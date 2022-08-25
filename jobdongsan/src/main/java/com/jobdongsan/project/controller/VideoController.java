package com.jobdongsan.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobdongsan.project.model.VideoVO;
import com.jobdongsan.project.service.VideoService;

@Controller
public class VideoController {
	// DI 설정
	@Autowired
	VideoService videoService;
	
	/*
	 * @RequestMapping("/video_index") public String video_index() { return
	 * "video/video_index"; }
	 */
	
	@RequestMapping("/video_subject")
	public String video_subject() {
		return "video/video_subject";
	}
	
	/*
	 * @RequestMapping("/video_detail") public String video_detail() { return
	 * "video/video_detail"; }
	 */
	
	// 전체 영상 출력 
	@RequestMapping("/video_index")
	public String viewVideoAllList(Model model) {
		ArrayList<VideoVO> videoList = videoService.listAllVideo();
		model.addAttribute("videoList", videoList);
		
		return "video/video_index";
	}
	
	// 영상 정보 상세 조회
	@RequestMapping("/video_detail/{videoNo}")
	public String detailViewVideo(@PathVariable int videoNo, Model model) {
		VideoVO video = videoService.detailViewVideo(videoNo);
		model.addAttribute("video", video);
		
		// 동일 카테고리 영화 조회 요청 처리
		ArrayList<VideoVO> videoList = videoService.listSubjectVideo(video.getVideoCtg());
		model.addAttribute("videoList", videoList);
		
		return "video/video_detail";
	}
	
}
