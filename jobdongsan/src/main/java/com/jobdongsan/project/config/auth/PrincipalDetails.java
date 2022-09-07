package com.jobdongsan.project.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.jobdongsan.project.model.MemberVO;

//Authentication 객체에 저장할 수 있는 유일한 타입
public class PrincipalDetails implements UserDetails, OAuth2User{
	private static final long serialVersionUID = 1L;
	private MemberVO vo;
	private Map<String, Object> attributes; // OAuth2User
	
	// 일반 시큐리티 로그인시 사용
	public PrincipalDetails(MemberVO vo) {
		this.vo = vo;
	}
	
	// OAuth2.0 로그인시 사용
	public PrincipalDetails(MemberVO vo, Map<String, Object> attributes) {
		this.vo = vo;
		this.attributes = attributes;
	}
	

	public MemberVO getVo() {
		return vo;
	}

	@Override
	public String getUsername() {
		return vo.getMemName();
	}
	
	@Override
	public String getPassword() {
		return vo.getMemPw();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public void setVo(MemberVO vo) {
		this.vo = vo;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collet = new ArrayList<GrantedAuthority>();
		collet.add(()->{ return vo.getRole();});
		return collet;
	}

	// OAuth2User 오버라이딩
	
	// 리소스 서버로 부터 받는 회원정보
	// OAuth2User타입의 Map으로 저장되서 나중에 꺼내쓸 수있도록 한다
	@Override
	public Map<String, Object> getAttributes() {
		return attributes;
	}

	// User의 PrimaryKey
	@Override
	public String getName() {
		return vo.getMemId()+"";
	}	
}