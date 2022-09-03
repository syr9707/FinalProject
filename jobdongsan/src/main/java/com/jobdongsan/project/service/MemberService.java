package com.jobdongsan.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IMemberDAO;
import com.jobdongsan.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Autowired
	PasswordEncoder pwdEncoder;
	
	/*
	 * @Override public String loginCheck(HashMap<String, Object> map) { return
	 * dao.loginCheck(map); }
	 */
	
	@Override
	public String loginCheck(HashMap<String, Object> map) {
		// 전달받은 아이디로 암호화된 비밀번호 알아온 후
		String encodedPwd = dao.loginCheck((String)map.get("memId"));
		
		// 입력한 비밀번호 평문과 mapper에서 받은 암호화된 비밀번호가 일치하는지 체크
		// matches(평문, 암호문): 일치 여부 반환
		String result = "fail";
		if(encodedPwd != null && pwdEncoder.matches((String)map.get("memPw"), encodedPwd)) {
			result = "success";
		}
		
		return result;
	}
	
	@Override
	public void insertMember(MemberVO vo) {
		// 비밀번호 암호화 처리한 후 mapper에게 전달
		String encodedPwd = pwdEncoder.encode(vo.getMemPw());
		vo.setMemPw(encodedPwd);
		
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
