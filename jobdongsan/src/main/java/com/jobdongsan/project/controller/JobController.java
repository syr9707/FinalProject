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

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.service.JobService;

@Controller
public class JobController {
	// DI 설정
	@Autowired
	JobService jobService;
	
	// 전체 직업 출력
	@RequestMapping("/job_index")
	public String viewJobAllList(Model model) {
		ArrayList<JobVO> jobList = jobService.listAllJob();
		model.addAttribute("jobList", jobList);
		
		return "job/job_index";
	}
	
	// 직업 정보 상세 조회
	@RequestMapping("/job_detail/{jobNo}")
	public String detailViewJob(@PathVariable int jobNo, HttpSession session, Model model) {
		JobVO job = jobService.detailViewJob(jobNo);
		model.addAttribute("job", job);
		
		String memId = (String)session.getAttribute("sid");
		model.addAttribute("memId", memId);
		
		return "job/job_detail";
	}
	
	// 직업 검색
	@RequestMapping("/jobsearchtest")
	public String jobSearch(@RequestParam HashMap<String, Object> param, Model model) {
		ArrayList<JobVO> jobList = jobService.jobSearch(param);
		model.addAttribute("jobList", jobList);
		
		return "job/job_search_result";
	}
	
	// 마이페이지에 찜직업(관심직업) 추가 
	

}



