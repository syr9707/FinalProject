package com.jobdongsan.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IMemberDAO;
import com.jobdongsan.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public String loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}

	@Override
	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);
	}

	@Override
	public String checkMemId(String memId) {
		return dao.checkMemId(memId);
	}

	@Override
	public MemberVO getMemberInfo(String memId) {
		return dao.getMemberInfo(memId);
	}

	@Override
	public String mypageCheck(String memId) {
		return dao.mypageCheck(memId);
	}

	@Override
	public void updateMemberInfo(MemberVO vo) {
		dao.updateMemberInfo(vo);
	}

	@Override
	public void deleteMember(String memId) {
		dao.deleteMember(memId);
	}

}
