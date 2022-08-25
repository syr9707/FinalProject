package com.jobdongsan.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String detailViewJob(@PathVariable int jobNo, Model model) {
		JobVO job = jobService.detailViewJob(jobNo);
		model.addAttribute("job", job);
		
		return "job/job_detail";
	}
	
	// 직업 검색
	@ResponseBody
	@RequestMapping("/jobsearchtest")
	public ArrayList<JobVO> jobSearch(@RequestParam String keyword, Model model) {
		ArrayList<JobVO> jobList = jobService.jobSearch(keyword);
		model.addAttribute("jobList", jobList);
		
		return jobList;
	}
	
	// 마이페이지에 찜직업(관심직업) 추가 
	

}



