package com.jobdongsan.project.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobdongsan.project.model.CategoryVO;
import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.ResultVO;
import com.jobdongsan.project.service.CategoryService;
import com.jobdongsan.project.service.ResultService;

@Controller
public class InterestController {
	
	@Autowired
	ResultService resultService;
	
	@Autowired
	CategoryService categoryService;
	
	
	// 흥미 인덱스 페이지
	@RequestMapping("/interest_index")
	public String interest_index() {
		return "interest/interest_index";
	}
	
	@RequestMapping("/interest_index2")
	public String interest_index2() {
		return "interest/interest_index";
	}
	
	@RequestMapping("/interest_index3")
	public String interest_index3() {
		return "interest/interest_index";
	}
	
	// 흥미 테스트 페이지
	@RequestMapping("/interest_test")
	public String interest_test() {
		return "interest/interest_test";
	}
	
	@RequestMapping("/interest_test2")
	public String interest_test2() {
		return "interest/interest_test2";
	}
	
	@RequestMapping("/interest_test3")
	public String interest_test3() {
		return "interest/interest_test3";
	}
	
	// 흥미 스코어 DB에 넣기
	@ResponseBody
	@RequestMapping("/interest_score")
	public String interest_score(@RequestParam HashMap<String, Object> map, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String checkMemId = "";
		
		if(memId == null) {
			map.put("memId", "notMem");
			checkMemId = "notMem";
		}else {
			map.put("memId", memId);
			checkMemId = memId;
		}
		
		HashMap<String, Integer> scoreList = resultService.getScore(checkMemId);
		
		if(scoreList == null) {
			resultService.insertScore(map);
		}else {
			resultService.updateScore(map);
		}
		
		return "success";
	}
	
	// 흥미 결과 페이지
	@RequestMapping("/interest_result")
	public String interest_result(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String checkMemId = "";
		if(memId == null) {
			checkMemId = "notMem";
		}else {
			checkMemId = memId;
		}
		ArrayList<CategoryVO> ctgList = categoryService.getCategoryInfo();
		HashMap<String, Integer> scoreList = resultService.getScore(checkMemId);
		HashMap<String, Object> checkResultNo = resultService.checkResultNo(checkMemId);
		int resultNo = resultService.getResultNo(checkMemId);
		HashMap<String, Object> highScore = new HashMap<String, Object>();
		HashMap<String, Object> insertResultNo = new HashMap<String, Object>();
		
		Map.Entry<String, Integer> maxScore =
            Collections.max(scoreList.entrySet(), Map.Entry.comparingByValue());

		String maxScoreKey = maxScore.getKey();
		String maxScoreKeyNum = maxScoreKey.substring(5,6);
		int maxScoreKeyNumInt = Integer.parseInt(maxScoreKeyNum);
		
		highScore.put("categoryNo", maxScoreKeyNumInt);
		highScore.put("memId", checkMemId);
		
		insertResultNo.put("resultNo", resultNo);
		insertResultNo.put("memId", checkMemId);
		
		resultService.insertCategory(highScore);
		
		if(checkResultNo == null) {
			resultService.insertResultNo(insertResultNo);
		}
		

		model.addAttribute("ctgList", ctgList);
		model.addAttribute("scoreList", scoreList);
		model.addAttribute("maxScoreKey", maxScoreKey);
		model.addAttribute("maxScoreKeyNum", maxScoreKeyNum);
		return "interest/interest_result";
	}
	
	
	@RequestMapping("/interest_result2")
	public String interest_result2(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String checkMemId = "";
		if(memId == null) {
			checkMemId = "notMem";
		}else {
			checkMemId = memId;
		}
		ArrayList<CategoryVO> ctgList = categoryService.getCategoryInfo();
		ArrayList<JobVO> CtgJobList = resultService.ctgJob();
		HashMap<String, Integer> scoreList = resultService.getScore(checkMemId);
		
		Map.Entry<String, Integer> maxScore =
            Collections.max(scoreList.entrySet(), Map.Entry.comparingByValue());
		String maxScoreKey = maxScore.getKey();
		String maxScoreKeyNum = maxScoreKey.substring(5,6);
		
		model.addAttribute("ctgList", ctgList);
		model.addAttribute("CtgJobList", CtgJobList);
		model.addAttribute("maxScoreKeyNum", maxScoreKeyNum);
		return "interest/interest_result2";
	}
	
	
	@RequestMapping("/interest_result3")
	public String interest_result3(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String checkMemId = "";
		if(memId == null) {
			checkMemId = "notMem";
		}else {
			checkMemId = memId;
		}
		ArrayList<CategoryVO> ctgList = categoryService.getCategoryInfo();
		ArrayList<MapVO> CtgMapList = resultService.ctgMap();
		HashMap<String, Integer> scoreList = resultService.getScore(checkMemId);
		
		Map.Entry<String, Integer> maxScore =
            Collections.max(scoreList.entrySet(), Map.Entry.comparingByValue());
		String maxScoreKey = maxScore.getKey();
		String maxScoreKeyNum = maxScoreKey.substring(5,6);
		
		model.addAttribute("ctgList", ctgList);
		model.addAttribute("CtgMapList", CtgMapList);
		model.addAttribute("maxScoreKeyNum", maxScoreKeyNum);
		return "interest/interest_result3";
	}
	
	// 흥미 나의 다짐 페이지
	@RequestMapping("/interest_my_promise")
	public String my_promise() {
		return "interest/interest_my_promise";
	}
	
	@RequestMapping("/my_promise_text")
	public String my_promise_text(@RequestParam HashMap<String, Object> map, ResultVO vo, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String my_promise = (String)map.get("school") + "|" + (String)map.get("grade") + "|" + (String)map.get("class") + "|" + (String)map.get("name") + "|" +
							(String)map.get("friends_think") + "|" + (String)map.get("friends_think2") + "|" + (String)map.get("my_think") + "|" + (String)map.get("my_think2") + "|" + 
							(String)map.get("my_future") + "|" + (String)map.get("my_future2") + "|" + (String)map.get("my_plan") + "|" + (String)map.get("my_plan2") + "|" +
							(String)map.get("my_promise");
		
		vo.setMyPromise(my_promise);
		vo.setMemId(memId);
		
		resultService.insertPromise(vo);
		
		return "redirect:/";
	}
}
