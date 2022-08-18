package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InterestController {
	@RequestMapping("/interest")
	public String interest() {
		return "interest/interest";
	}
	
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
}
