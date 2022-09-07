package com.jobdongsan.project.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.dao.IMemberDAO;
import com.jobdongsan.project.model.MemberVO;

@Service
public class PrincipalDetailsService implements UserDetailsService {
	@Autowired
	IMemberDAO dao;

	@Override
	public UserDetails loadUserByUsername(String memId) throws UsernameNotFoundException {
		MemberVO vo = dao.getMemberInfo(memId);
		if (vo.getMemId() == null) {
			return null;
		} else {
			return new PrincipalDetails(vo);
		}
	}
}