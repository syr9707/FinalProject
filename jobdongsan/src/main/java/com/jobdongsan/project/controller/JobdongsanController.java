package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobdongsanController {
	@RequestMapping("/")
	public String main() {
		return "member/logins";
	}
}
