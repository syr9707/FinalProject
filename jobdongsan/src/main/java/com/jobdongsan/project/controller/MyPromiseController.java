package com.jobdongsan.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobdongsan.project.model.ResultVO;
import com.jobdongsan.project.service.ResultService;

@Controller
public class MyPromiseController {

	@Autowired
	ResultService resultService;

	// 전체 직업 체험 장소 리스트
	@RequestMapping("/mypage_my_promise")
	public String myPageMyPromise(HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		ResultVO result = resultService.getMyPromise(memId);
		//model.addAttribute("result", result);
		
		String test = result.getMyPromise();
		String[] arr = test.split("\\|");
		model.addAttribute("arr", arr);
		
	return "member/mypage_my_promise";
	}

}
