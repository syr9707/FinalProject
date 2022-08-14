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
			<div class="section_wrap bd_top">
				<form id="login_form" method="post" action="<c:url value='/loginCheck'/>">
					<div class="login_id">
						<h3 class="txt_semibold txt_30">ID 로그인</h3>
						<div>
							<input type="text" class="input_id" placeholder="아이디">
							<input type="password" class="input_pw" placeholder="비밀번호">
						</div>
						<div class="gray"><i></i>로그인 상태 유지</div>
						<div class="btn_login txt_bold txt_20 bg_y bd_rd10">로그인</div>
						<div>
							<a class="btn_login_sub" href="<c:url value='/find_id' />">아이디 찾기</a>
							<a class="btn_login_sub" href="<c:url value='/find_pw' />">비밀번호 찾기</a>
							<a class="btn_login_sub" href="<c:url value='/signup' />">회원가입</a>
						</div>
					</div>
					<div class="login_sns">
						<h3 class="txt_semibold txt_20">SNS 로그인</h3>
						<div>
							<a href="<c:url value='/login_naver' />"><img src="<c:url value='/images/logo_naver.png' />"> 네이버로 로그인</a>
							<a href="<c:url value='/login_google' />"><img src="<c:url value='/images/logo_google.png' />"> 구글로 로그인</a>
							<a href="<c:url value='/login_kakao' />"><img src="<c:url value='/images/logo_kakao.png' />"> 카카오로 로그인</a>
						</div>
					</div>
				</form>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>