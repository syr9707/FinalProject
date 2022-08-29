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

import com.jobdongsan.project.model.MyHistoryVO;
import com.jobdongsan.project.model.VideoVO;
import com.jobdongsan.project.service.VideoService;

@Controller
public class VideoController {
	// DI 설정
	@Autowired
	VideoService videoService;
	
	// 전체 영상 출력 
	@RequestMapping("/video_index")
	public String viewVideoAllList(Model model) {
		ArrayList<VideoVO> videoList = videoService.listAllVideo();
		model.addAttribute("videoList", videoList);
		
		return "video/video_index";
	}
	
	// 영상 정보 상세 조회
	@RequestMapping("/video_detail/{videoNo}")
	public String detailViewVideo(@PathVariable int videoNo, HttpSession session,  Model model) {
		VideoVO video = videoService.detailViewVideo(videoNo);
		model.addAttribute("video", video);
		
		String memId = (String)session.getAttribute("sid");
		model.addAttribute("memId", memId);
		
		// 동일 카테고리 영상 조회 요청 처리 (문자 버전)
		ArrayList<VideoVO> videoList = videoService.listSubjectVideo(video.getVideoCtg());
		model.addAttribute("videoList", videoList);
		
		return "video/video_detail";
	}
	
	// 동일 카테고리 영상 조회 페이지 (숫자 버전)
	@RequestMapping("/video_subject/{videoCtgNo}")
	public String listSubjectNoVideo(@PathVariable int videoCtgNo, Model model) {
		ArrayList<VideoVO> videoList = videoService.listSubjectNoVideo(videoCtgNo);
		model.addAttribute("videoList", videoList);
		
		return "video/video_subject";
	}
	
	// 관심 영상(찜영상) 담기 
	@ResponseBody
	@RequestMapping("/insert_video")
	public String insertVideo(@RequestParam HashMap<String, Object> param, MyHistoryVO vo, HttpSession session) {
		String result = null;
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		int count = videoService.checkVideo(vo.getVideoNo(), memId);
		if(count == 0) {
			videoService.insertVideo(param);
			result = "0";
		}
		else {
			result = "1";
		}
		
		return result;
	}
	
	// 관심 영상(찜영상) 삭제 
	@ResponseBody
	@RequestMapping("/delete_video")
	public String deleteVideo(@RequestParam HashMap<String, Object> param) {
		
		int videoNo = Integer.parseInt((String)param.get("videoNo"));
		videoService.deleteVideo(videoNo);

		return "1";
	}
	
	
	
}
