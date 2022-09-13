package com.jobdongsan.project.config.oauth;

import java.util.HashMap;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.jobdongsan.project.config.auth.PrincipalDetails;
import com.jobdongsan.project.config.oauth.provider.GoogleUserInfo;
import com.jobdongsan.project.config.oauth.provider.KakaoUserInfo;
import com.jobdongsan.project.config.oauth.provider.NaverUserInfo;
import com.jobdongsan.project.config.oauth.provider.OAuth2UserInfo;
import com.jobdongsan.project.dao.IMemberDAO;
import com.jobdongsan.project.model.MemberVO;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {
	@Autowired
	IMemberDAO dao;
	
	@Autowired
	PasswordEncoder pwdEncoder;
	
	@Autowired
	HttpSession session;

	// userRequest 는 code를 받아서 accessToken을 응답 받은 객체
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oAuth2User = super.loadUser(userRequest); // google의 회원 프로필 조회

		// code를 통해 구성한 정보
		System.out.println("userRequest clientRegistration : " + userRequest.getClientRegistration());
		// token을 통해 응답받은 회원정보
		System.out.println("oAuth2User : " + oAuth2User);
	
		return processOAuth2User(userRequest, oAuth2User);
	}

	private OAuth2User processOAuth2User(OAuth2UserRequest userRequest, OAuth2User oAuth2User) {

		// Attribute를 파싱해서 공통 객체로 묶는다. 관리가 편함.
		OAuth2UserInfo oAuth2UserInfo = null;
		if (userRequest.getClientRegistration().getRegistrationId().equals("google")) {
			oAuth2UserInfo = new GoogleUserInfo(oAuth2User.getAttributes());
		} else if (userRequest.getClientRegistration().getRegistrationId().equals("kakao")) {
			oAuth2UserInfo = new KakaoUserInfo(oAuth2User.getAttributes());
		} else if (userRequest.getClientRegistration().getRegistrationId().equals("naver")){
			oAuth2UserInfo = new NaverUserInfo(oAuth2User.getAttributes());
		} else {
			System.out.println("잡동산은 구글, 카카오, 네이버만 지원합니다");
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("provider", oAuth2UserInfo.getProvider());
		map.put("providerId", oAuth2UserInfo.getProviderId());
		Optional<MemberVO> userOptional = dao.findByProviderAndProviderId(map);
		
		MemberVO vo = new MemberVO();
		if (userOptional.isPresent()) {
			vo = userOptional.get();
			// user가 존재하면 update 해주기
			vo.setMemEmail(oAuth2UserInfo.getEmail());
			dao.updateMemberInfo(vo);
		} else {
			vo.setMemId(oAuth2UserInfo.getEmail());
			vo.setMemPw(pwdEncoder.encode("1234"));
			vo.setMemName(oAuth2UserInfo.getName());
			vo.setMemEmail(oAuth2UserInfo.getEmail());
			vo.setRole("ROLE_USER");
			vo.setProvider(oAuth2UserInfo.getProvider());
			vo.setProviderId(oAuth2UserInfo.getProviderId());
			vo.setProfileImg(oAuth2UserInfo.getImageUrl());
			dao.insertOauthMember(vo);
		}
		
		session.setAttribute("sid", vo.getMemEmail());
		
		return new PrincipalDetails(vo, oAuth2User.getAttributes());
	}
}
