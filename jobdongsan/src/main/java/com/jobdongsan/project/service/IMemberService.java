package com.jobdongsan.project.service;

import java.util.HashMap;

import com.jobdongsan.project.model.MemberVO;
	public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);	// 로그인 확인
	public void insertMember(MemberVO vo);					// 회원 가입
	public String checkMemId(String memId); 				// 아이디 중복 체크
	public MemberVO getMemberInfo(String memId);			// 회원 정보 조회
	public String mypageCheck(String memId);				// 비밀번호 확인
	public MemberVO findMemId(String memEmail);				// 아이디 찾기
	public void updateMemPw(String memId, String newPw);	// 회원 비밀번호 업데이트
	public void updateMemberInfo(MemberVO vo);				// 회원 정보 수정
	public void deleteMember(String memId);					// 회원 탈퇴
}
