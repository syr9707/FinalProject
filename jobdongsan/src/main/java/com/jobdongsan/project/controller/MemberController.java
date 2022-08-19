package com.jobdongsan.project.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@ResponseBody
	@RequestMapping("/loginCheck") 
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) { 
		String memId = "";
		// memId = memService.loginCheck(param); 
		String result = "fail";
 
		// 아이디/비밀번호 일치하면 
		if(memId != null) { // 로그인 성공 시 세션 변수 지정 
			session.setAttribute("sid", memId); 
			result = "success"; 
		}
  		return result;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping("/find_id")
	public String find_id() {
		return "member/find_id";
	}
	
	@RequestMapping("/find_pw")
	public String find_pw() {
		return "member/find_pw";
	}
	
	@RequestMapping("/signup_terms")
	public String signup_terms() {
		return "member/signup_terms";
	}
	
	@RequestMapping("/signup")
	public String signup() {
		return "member/signup";
	}
	
	@RequestMapping("/mypage")
	public String mypage_index() {
		return "member/mypage_index";
	}
	
	@RequestMapping("/mypage_detail")
	public String mypage_detail() {
		return "member/mypage_detail";
	}
	
	@RequestMapping("/mypage_check")
	public String mypage_check() {
		return "member/mypage_check";
	}
	
	@RequestMapping("/mypage_update")
	public String mypage_update() {
		return "member/mypage_update";
	}
}
