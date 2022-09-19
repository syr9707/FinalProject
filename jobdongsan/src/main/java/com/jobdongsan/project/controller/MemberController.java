package com.jobdongsan.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jobdongsan.project.model.CategoryVO;
import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.model.MapVO;
import com.jobdongsan.project.model.MemberVO;
import com.jobdongsan.project.model.ResultVO;
import com.jobdongsan.project.model.VideoVO;
import com.jobdongsan.project.service.JobService;
import com.jobdongsan.project.service.MailService;
import com.jobdongsan.project.service.MapService;
import com.jobdongsan.project.service.MemberService;
import com.jobdongsan.project.service.MyHistoryService;
import com.jobdongsan.project.service.ResultService;
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
	@Autowired
	ResultService resultService;
	
	// 인덱스 페이지 호출
	@RequestMapping("/")
	public String main(Model model) {
		int jobNo = (int)(Math.random() * 134 + 1);
		JobVO job = jobService.detailViewJob(jobNo);
		model.addAttribute("job", job);
		
		int mapJobNo = (int)(Math.random() * 82 + 1);
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
		// 로그인 체크 결과 : 아이디와 비밀번호 전달하고 로그인 성공하면 아이디 반환
		String result = memService.loginCheck(map);
		
		// 아이디와 비밀번호 일치하면
		if(result.equals("success")) {
			// 로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", (String)map.get("memId"));			
		}
		
		return result;
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping("/checkMemId")
	public String checkMemId(String id) {
		String result = "fail";
		
		if(memService.checkMemId(id) == null) {
			result = "success";
		} else {
			result = "fail";
		}
		
		return result;
	}
	
	// SNS 회원가입 페이지 호출
	@RequestMapping("/login_sns_result")
	public String login_sns_result() {
		return "member/login_sns_result";
	}
		
		
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 아이디 찾기 페이지 호출
	@RequestMapping("/find_id_index")
	public String find_id_index() {	
		return "member/find_id_index";
	}
	
	// 아이디 찾기 이메일 인증
	@ResponseBody
	@RequestMapping("/find_id")
	public String find_id(String email) {
		String check = memService.checkMemEmail(email);
		
		if(check == null)
			return "fail";
		else {
			return mailService.findId(email);
		}
	}
	
	// 아이디 찾기 결과 페이지 호출
	@RequestMapping("/find_id_result")
	public String find_id_result(@RequestParam HashMap<String, Object> map, Model model) {
		String email = (String) map.get("email1") + "@" + (String) map.get("email2");
		MemberVO vo = memService.findMemId(email);
		
		model.addAttribute("memName", vo.getMemName());
		model.addAttribute("memId", vo.getMemId());
		
		return "member/find_id_result";
	}
	
	// 비밀번호 찾기 페이지 호출
	@RequestMapping("/find_pw_index")
	public String find_pw_index() {
		return "member/find_pw_index";
	}
	
	// 회원 아이디 이메일 체크
	@ResponseBody
	@RequestMapping("/check_memInfo")
	public String check_memInfo(String memId, String memEmail) {
		String result = "fail";
		String check = memService.checkMemInfo(memId, memEmail);
		
		if(check == null)
			result ="fail";
		else 
			result = "success";
		
		return result;
	}
	
	// 비밀번호 찾기 결과 페이지 호출
	@RequestMapping("/find_pw_result")
	public String find_pw_result(@RequestParam HashMap<String, Object> map, Model model) {
		String memEmail = (String) map.get("email1") + "@" + (String) map.get("email2");
		String memId = (String) map.get("id");
		String newPw = mailService.getTempPassword();
		MemberVO vo = memService.getMemberInfo(memId);
		
		memService.updateMemPw(memId, newPw);
		mailService.findPw(memEmail, newPw);
		
		model.addAttribute("memName", vo.getMemName());
		
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

	// 회원 가입 이메일 중복 체크
	@ResponseBody
	@RequestMapping("/checkMemEmail")
	public String check_memEmail(String email) {
		String chk = memService.checkMemEmail(email);
		String result = "fail";
		
		if(chk == null)
			result = "success";
		else
			result = "fail";
		
		return result;
	}
	
	// 회원가입 이메일 인증
	@ResponseBody
	@RequestMapping("/mailCheck")
	public String mailCheck(String email) {
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
		
		ArrayList<VideoVO> myVideoList = myService.getMyVideo(memId);
		ArrayList<MapVO> myMapList = myService.getMyMap(memId);
		CategoryVO myCtgInfo = myService.getMyCtg(memId);
		JobVO myJobInfo = myService.getMyJob(memId);
		String myProfileImg = myService.getMyProfileImg(memId);
		
		model.addAttribute("mem", mem);
		model.addAttribute("myVideoList", myVideoList);
		model.addAttribute("myMapList", myMapList);
		model.addAttribute("myCtgInfo", myCtgInfo);
		model.addAttribute("myJobInfo", myJobInfo);
		model.addAttribute("myProfileImg", myProfileImg);
		
		return "member/mypage_index";
	}
	
	// 마이페이지 디테일 페이지 호출
	@RequestMapping("/mypage_detail")
	
	public String mypage_detail(HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		MemberVO mem = memService.getMemberInfo(memId);
		int myCtgNum = myService.getMyCtgNum(memId);
		CategoryVO myCtgInfo = myService.getMyCtg(memId);
		HashMap<String, Integer> scoreList = resultService.getScore(memId);
		ArrayList<JobVO> myCtgJob = resultService.ctgJob();
		ArrayList<MapVO> myCtgMap = resultService.ctgMap();
		String checkMyPromise = myService.checkMyPromise(memId);
		String myProfileImg = myService.getMyProfileImg(memId);
		
		model.addAttribute("mem", mem);
		model.addAttribute("myCtgNum", myCtgNum);
		model.addAttribute("myCtgInfo", myCtgInfo);
		model.addAttribute("scoreList", scoreList);
		model.addAttribute("myCtgJob", myCtgJob);
		model.addAttribute("myCtgMap", myCtgMap);
		model.addAttribute("checkMyPromise", checkMyPromise);
		model.addAttribute("myProfileImg", myProfileImg);
		
		return "member/mypage_detail";
	}
	
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
	
	// 마이페이지 비밀번호 확인 페이지 호출
	@RequestMapping("/mypage_check")
	public String mypage_check(@RequestParam String chk, Model model) {
		model.addAttribute("chk", chk);
		return "member/mypage_check";
	}
	
	// 마이페이지 비밀번호 확인 작업
	@ResponseBody
	@RequestMapping("/checkPw")
	public String mypage_checkPw(@RequestParam String input_pw, HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		param.put("memId", memId);
		param.put("memPw", input_pw);
		
		String result = memService.loginCheck(param);
		
		return result;
	}
	
	// 마이페이지 내 정보 수정 페이지 호출
	@RequestMapping("/mypage_update")
	public String mypage_update(@RequestParam String chk, HttpSession session, Model model) {
		String memId = (String) session.getAttribute("sid");
		MemberVO mem = memService.getMemberInfo(memId);
		String myProfileImg = myService.getMyProfileImg(memId);

		model.addAttribute("mem", mem);
		model.addAttribute("chk", chk);
		model.addAttribute("myProfileImg", myProfileImg);
		
		return "member/mypage_update";
	}
	
	// 내 정보 수정 기능
	@RequestMapping("/update_memberInfo")
	public String update_memberInfo(@RequestParam HashMap<String, Object> map, @RequestParam("img_file_upload") MultipartFile file, HttpSession session, MemberVO vo, Model model) throws IOException {
		String memId = (String) session.getAttribute("sid");

		String childBirth = (String) map.get("birth_year") + "." + (String) map.get("birth_month") + "." + (String) map.get("birth_date");
		String email = (String) map.get("email1") + "@" + (String) map.get("email2");
		
		// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치 (프로젝트 외부에 저장)
		String uploadPath = "/upload/";
		
		// 2. 원본 파일 이름 알아오기
		String originalFileName = file.getOriginalFilename();
		
		// 3. 파일 생성
		File newFile = new File(uploadPath + originalFileName);
		String insertProfileImg = newFile.toString();
		
		// 4. 서버로 전송
		file.transferTo(newFile);
		
		vo.setMemId(memId);
		vo.setMemPw((String) map.get("pw"));
		vo.setMemName((String) map.get("name"));
		vo.setMemEmail(email);
		vo.setMemChildBirth(childBirth);
		vo.setMemHP((String) map.get("phone"));
		vo.setProfileImg(insertProfileImg);
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
		
		myService.deleteMyHistory(memId);
		resultService.deleteResult(memId);
		memService.deleteMember(memId);
		model.addAttribute("chk", chk);
		session.invalidate();
		return "member/mypage_result";
	}
}
