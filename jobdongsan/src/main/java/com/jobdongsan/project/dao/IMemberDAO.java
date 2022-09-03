package com.jobdongsan.project.dao;

import java.util.HashMap;

import com.jobdongsan.project.model.MemberVO;
import com.jobdongsan.project.model.VideoVO;

public interface IMemberDAO {
	public String loginCheck(String memId);	// 로그인 확인
	public void insertMember(MemberVO vo);					// 회원 가입
	public String checkMemId(String memId); 				// 아이디 중복 체크
	public MemberVO getMemberInfo(String memId);			// 회원 정보 조회
	public String mypageCheck(String memId);				// 비밀번호 확인
	public void updateMemberInfo(MemberVO vo);				// 회원 정보 수정
	public void deleteMember(String memId);					// 회원 탈퇴
}
