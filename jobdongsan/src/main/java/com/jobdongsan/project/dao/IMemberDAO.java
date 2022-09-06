package com.jobdongsan.project.dao;

import java.util.HashMap;

import com.jobdongsan.project.model.MemberVO;

public interface IMemberDAO {
	public String loginCheck(String memId);						// 로그인 확인
	public void insertMember(MemberVO vo);						// 회원 가입
	public String checkMemId(String memId); 					// 아이디 중복 체크
	public MemberVO getMemberInfo(String memId);				// 회원 정보 조회
	public String mypageCheck(String memId);					// 비밀번호 확인
	public String checkMemEmail(String memEmail);				// 회원 이메일 체크
	public MemberVO findMemId(String memEmail);					// 아이디 찾기
	public String checkMemInfo(HashMap<String, Object> map);	// 회원 아이디 이메일 체크
	public void updateMemPw(HashMap<String, Object> map);		// 회원 비밀번호 업데이트
	public void updateMemberInfo(MemberVO vo);					// 회원 정보 수정
	public void deleteMember(String memId);						// 회원 탈퇴
}
