package com.jobdongsan.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobdongsan.project.service.JobService;

@Controller
public class JobController {
	// DI 설정
	@Autowired
	JobService jobService;
	
	// 화면 테스트 
	@RequestMapping("/jobdetail")
	public String jobdetail() {
		return "job/job_detail";
	}
	
	// 화면 테스트 
	@RequestMapping("/jobindex")
	public String jobindex() {
		return "job/job_index";
	}
	
	
	/*
	 * // 직업 정보 상세 조회 : /job/detailJob
	 * 
	 * @RequestMapping("/job/detailJob/{jobNo}") public String
	 * detailViewJob(@PathVariable int jobNo, HttpSession session, Model model) {
	 * 
	 * return "job/detailpage"; }
	 */

}



