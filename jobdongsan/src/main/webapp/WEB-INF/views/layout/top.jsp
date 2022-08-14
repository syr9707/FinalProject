<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<header id="header">
		<!-- 헤더 wrap -->
		<div id="header_wrap">
			<!-- 로그인/회원가입 || 로그아웃/마이페이지 -->
			<div id="account_bar">
				<c:if test="${empty sessionScope.sid }">
					<a class="btn_account" href="<c:url value='/login' />">로그인</a>
					<a class="btn_account" href="<c:url value='/signup' />">회원가입</a>
				</c:if>
				<c:if test="${not empty sessionScope.sid }">
					<a class="btn_account" href="<c:url value='/logout' />">로그아웃</a>
					<a class="btn_account" href="<c:url value='/mypage' />">나의 잡동산</a>
				</c:if>
			</div>
			<div id="nav_menu" class="bg_y bd_top">
				<a href="/"><img class="logo" src="<c:url value='/images/logo_job.png'/>"></a>
				<!-- 흥미/직업/체험 -->
				<div>
					<a href="/int"><img class="nav_int txt_bold txt_25" src="<c:url value='/images/ic_int.png'/>">흥미 냠냠</a>
					<a href="/job"><img class="nav_job txt_bold txt_25" src="<c:url value='/images/ic_job.png'/>">직업 냠냠</a>
					<a href="/map"><img class="nav_map txt_bold txt_25" src="<c:url value='/images/ic_map.png'/>">체험 냠냠</a>
				</div>
			</div>
		</div>
	</header>