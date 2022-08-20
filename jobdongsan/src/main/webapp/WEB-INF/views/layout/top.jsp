<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<header>
		<div class="top_box">
			<div class="login_box_wrap">
				<div class="login_box">
					<div class="login">
						<c:if test="${empty sessionScope.sid }">
							<a class="btn_account" href="<c:url value='/login' />">로그인</a>
							<a class="btn_account" href="<c:url value='/signup_terms' />">회원가입</a>
						</c:if>
						<c:if test="${not empty sessionScope.sid }">
							<a class="btn_account" href="<c:url value='/logout' />">로그아웃</a>
							<a class="btn_account" href="<c:url value='/mypage' />">나의 잡동산</a>
						</c:if>
					</div>
				</div>
			</div>
			<div class="main_menu_wrap">
				<div class="main_menu_box">
					<nav class="main_menu">
						<div class="logo">
							<img src="<c:url value='/images/Logo_gingerbread-man.png' />">
							<img src="<c:url value='/images/logo_job.png' />">
						</div>
						<ul>
							<li>
								<img src="/images/ic_int.png" class="interest">
								<a href="/interest_index" class="interest">흥미 냠냠</a>
							</li>
							<li>
								<img src="/images/ic_job.png" class="job">
								<a href="/job_index" class="job">직업 냠냠</a>
							</li>
							<li>
								<img src="/images/ic_video.png" class="video">
								<a href="/video_index" class="video">영상 냠냠</a>
							</li>
							<li>
								<img src="/images/ic_map.png" class="experience">
								<a href="/map_index" class="experience">체험 냠냠</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
        </div>
    </header>