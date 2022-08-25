package com.jobdongsan.project.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobdongsan.project.model.QuestionVO;

@Controller
public class InterestController {
	
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
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/interest_index3_1") public ArrayList<QuestionVO>
	 * interest_index3_1() { String question = "";
	 * 
	 * return question; }
	 */
	
	
	
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
	
	@RequestMapping("/interest_result")
	public String interest_result() {
		return "interest/interest_result";
	}
	
	@RequestMapping("/interest_result2")
	public String interest_result2() {
		return "interest/interest_result2";
	}
	
	@RequestMapping("/interest_my_promise")
	public String my_promise() {
		return "interest/interest_my_promise";
	}
}
