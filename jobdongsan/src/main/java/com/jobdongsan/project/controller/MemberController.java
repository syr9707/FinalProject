package com.jobdongsan.project.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.MemberVO;
import com.jobdongsan.project.model.VideoVO;
import com.jobdongsan.project.service.JobService;
import com.jobdongsan.project.service.MailService;
import com.jobdongsan.project.service.MapService;
import com.jobdongsan.project.service.MemberService;
import com.jobdongsan.project.service.MyHistoryService;
import com.jobdongsan.project.service.VideoService;

@Controller
public class MemberController {
	@Autowired
	MemberService memService;
	@Autowired
	MailService mailService;
	@Autowired
	MyHistoryService myService;
	@Autowired
	JobService jobService;
	@Autowired
	MapService mapService;
	@Autowired
	VideoService videoService;
	
	// 인덱스 페이지 호출
	@RequestMapping("/")
	public String main(Model model) {
		int jobNo = (int)(Math.random() * 134 + 1);
		JobVO job = jobService.detailViewJob(jobNo);
		model.addAttribute("job", job);
		
		int mapJobNo = (int)(Math.random() * 45 + 1);
		MapVO map = mapService.detailMapView(mapJobNo);
		model.addAttribute("map", map);
		
		int videoNo = (int)(Math.random() * 215 + 1);
		VideoVO video = videoService.detailViewVideo(videoNo);
		model.addAttribute("video", video);
		
		int videoNo2 = (int)(Math.random() * 215 + 1);
		VideoVO video2 = videoService.detailViewVideo(videoNo2);
		model.addAttribute("video2", video2);
		
		return "index";
	}
	
	// 로그인 페이지 호출
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	
	// 로그인 체크
	@ResponseBody
	@RequestMapping("/loginCheck") 
	public String loginCheck(@RequestParam HashMap<String, Object> map, HttpSession session) { 
		String memId = memService.loginCheck(map);
		String result = "fail";
 
		// 아이디/비밀번호 일치하면 
		if(memId != null) { // 로그인 성공 시 세션 변수 지정 
			session.setAttribute("sid", memId); 
			result = "success"; 
		}
  		return result;
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping("/checkMemId")
	public String checkMemId(String id) {
		String result = "";
		
		if(memService.checkMemId(id) == null) {
			result = "ok";
		} else {
			result = "no";
		}
		
		return result;
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	// 아이디 찾기 페이지 호출
	@RequestMapping("/find_id_index")
	public String find_id_index() {
		return "member/find_id_index";
	}
	
	// 아이디 찾기 결과 페이지 호출
	@RequestMapping("/find_id_result")
	public String find_id_result() {
		return "member/find_id_result";
	}
	
	// 비밀번호 찾기 페이지 호출
	@RequestMapping("/find_pw_index")
	public String find_pw_index() {
		return "member/find_pw_index";
	}
	
	// 비밀번호 찾기 결과 페이지 호출
	@RequestMapping("/find_pw_result")
	public String find_pw_result() {
		return "member/find_pw_result";
	}
	
	// 회원가입 약관 페이지 호출
	@RequestMapping("/signup_terms")
	public String signup_terms() {
		return "member/signup_terms";
	}
	
	// 회원가입 페이지 호출
	@RequestMapping("/signup")
	public String signup() {
		return "member/signup";
	}
	
	//이메일 인증
	@ResponseBody
	@RequestMapping("/mailCheck")
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
	
	// 회원 가입 기능 후 가입 완료 페이지로 이동
	@RequestMapping("/insert_member")
	public String insert_member(@RequestParam HashMap<String, Object> map, MemberVO vo, Model model) {
		String childBirth = (String) map.get("birth_year") + "." + (String) map.get("birth_month") + "." + (String) map.get("birth_date");
		String email = (String) map.get("email1") + "@" + (String) map.get("email2");
		
		vo.setMemId((String) map.get("id"));
		vo.setMemPw((String) map.get("pw"));
		vo.setMemName((String) map.get("name"));
		vo.setMemEmail(email);
		vo.setMemChildBirth(childBirth);
		vo.setMemHP((String) map.get("phone"));
		vo.setMemZipcode((String) map.get("zipcode"));
		vo.setMemAddress1((String) map.get("address1"));
		vo.setMemAddress2((String) map.get("address2"));
		
		memService.insertMember(vo);
		model.addAttribute("chk", (String) map.get("chk"));
		
		return "member/mypage_result";
	}
	
	// 마이페이지 인덱스 페이지 호출
	@RequestMapping("/mypage_index")
	public String mypage_index(HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		MemberVO mem = memService.getMemberInfo(memId);
		
		Integer check = myService.checkResultNo(memId);
		
		if(check == null) {
			// insert 작업
		} else {
			// update 작업
		}
		
		model.addAttribute("mem", mem);
		
		return "member/mypage_index";
	}
	
	// 마이페이지 디테일 페이지 호출
	@RequestMapping("/mypage_detail")
	public String mypage_detail(HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		MemberVO mem = memService.getMemberInfo(memId);
		
		model.addAttribute("mem", mem);
		
		return "member/mypage_detail";
	}
	
	// 마이페이지 비밀번호 확인 페이지 호출
	@RequestMapping("/mypage_check")
	public String mypage_check(@RequestParam String chk, Model model) {
		model.addAttribute("chk", chk);
		return "member/mypage_check";
	}
	
	// 마이페이지 비밀번호 확인 작업
	@ResponseBody
	@RequestMapping("/checkPw")
	public String mypage_checkPw(@RequestParam String input_pw, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		String memPw = memService.mypageCheck(memId);
		String result = "fail";
		
		if(input_pw.equals(memPw)) {
			result = "success";
		}
		return result;
	}
	
	// 마이페이지 내 정보 수정 페이지 호출
	@RequestMapping("/mypage_update")
	public String mypage_update(@RequestParam String chk, HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		MemberVO mem = memService.getMemberInfo(memId);

		model.addAttribute("mem", mem);
		model.addAttribute("chk", chk);
		
		return "member/mypage_update";
	}
	
	// 내 정보 수정 기능
	@RequestMapping("/update_memberInfo")
	public String update_memberInfo(@RequestParam HashMap<String, Object> map, HttpSession session, MemberVO vo, Model model) {
		String memId = (String) session.getAttribute("sid");

		String childBirth = (String) map.get("birth_year") + "." + (String) map.get("birth_month") + "." + (String) map.get("birth_date");
		String email = (String) map.get("email1") + "@" + (String) map.get("email2");
		
		vo.setMemId(memId);
		vo.setMemPw((String) map.get("pw"));
		vo.setMemName((String) map.get("name"));
		vo.setMemEmail(email);
		vo.setMemChildBirth(childBirth);
		vo.setMemHP((String) map.get("phone"));
		vo.setMemZipcode((String) map.get("zipcode"));
		vo.setMemAddress1((String) map.get("address1"));
		vo.setMemAddress2((String) map.get("address2"));
		
		memService.updateMemberInfo(vo);
		model.addAttribute("chk", (String) map.get("chk"));
		
		return "member/mypage_result";
	}
	
	// 회원 탈퇴 체크 페이지
	@RequestMapping("/delete_check")
	public String delete_memberInfo(@RequestParam String chk, Model model) {
		model.addAttribute("chk", chk);
		return "member/mypage_check";
	}
	
	// 회원 탈퇴 처리
	@RequestMapping("/delete_memberInfo")
	public String delete_memberInfo(@RequestParam String chk, HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		memService.deleteMember(memId);
		model.addAttribute("chk", chk);
		session.invalidate();
		return "member/mypage_result";
	}
}
