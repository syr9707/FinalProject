<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='css/interest_test.css' />"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- js -->
		<script src="<c:url value='/js/interest_test.js' />"></script>
	</head>
	<body>
		<section>
			<div class="box_wrap">
				<div class="test_title">
					<p><span>진로 흥미 탐색</span><br><span>쿠키씨의 요리교실</span></p>
				</div>
				<div class="test_contents">
					<p>그럼, 흥미탐색 주방에서<br>여러가지 음식을 만들어 볼까요?</p>
				</div>
			</div>
			<div class="test_btn">
				<c:if test="${empty sessionScope.sid }">
					<div class="test_mem_start">
						<a class="btn_login_start">로그인 후 시작</a>
					</div>
					<div class="test_not_mem_start">
						<a class="btn_account">비회원으로 시작</a>
					</div>
				</c:if>
				<c:if test="${not empty sessionScope.sid }">
					<div class="login_start">
						<a class="btn_account">시작하기</a>
					</div>
				</c:if>
			</div>
			<img src="images/cooking.png" class="cooking">
		</section>
	</body>
</html>