<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/login.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/login.js' />"></script>
	</head>
	<body> 
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
			<form id="login_form" method="post" action="<c:url value='/loginCheck'/>">
				<div class="section_wrap">
					<div class="login_id">
						<h3 class="semibold txt_30">ID 로그인</h3>
						<div class="input_id">
							<input type="text" class="login_input" id="id" name="id" placeholder="아이디">
						</div>
						<div class="input_pw">
							<input type="password" class="login_input" id="pw" name="pw" placeholder="비밀번호">
						</div>
						<div class="login_continue gray"><span><i class="fa-regular fa-circle"></i></span><span>로그인 상태 유지</span></div>
						<div class="login_error red">아이디와 비밀번호를 확인해 주세요.</div>
						<div class="btn_login bold txt_20 bg_y">로그인</div>
						<div class="login_sub">
							<a class="btn_login_sub" href="<c:url value='/find_id_index' />">아이디 찾기</a>
							<a class="btn_login_sub" href="<c:url value='/find_pw_index' />">비밀번호 찾기</a>
							<a class="btn_login_sub" href="<c:url value='/signup_terms' />">회원가입</a>
						</div>
					</div>
					<div class="login_sns">
						<h3 class="semibold txt_20">SNS 로그인</h3>
						<div class="login_sns_bd">
							<div>
								<a href="<c:url value='/login/naver' />"><img src="<c:url value='/images/logo_naver.png' />"><span>네이버로 로그인</span></a>
							</div>
							<div>
								<a href="<c:url value='/login/google' />"><img src="<c:url value='/images/logo_google.png' />"><span>구글로 로그인</span></a>
							</div>
							<div>
								<a href="<c:url value='/login/kakao' />"><img src="<c:url value='/images/logo_kakao.png' />"><span>카카오로 로그인</span></a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>