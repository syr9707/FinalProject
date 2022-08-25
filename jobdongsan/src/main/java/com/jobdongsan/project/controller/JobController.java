package com.jobdongsan.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.service.JobService;

@Controller
public class JobController {
	// DI 설정
	@Autowired
	JobService jobService;
	
	// 화면 테스트 
	/*@RequestMapping("/job_detail")
	public String job_detail() {
		return "job/job_detail";
	}*/
	
	// 화면 테스트 
	/*@RequestMapping("/job_index")
	public String job_index() {
		return "job/job_index";
	}*/
	
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

}



