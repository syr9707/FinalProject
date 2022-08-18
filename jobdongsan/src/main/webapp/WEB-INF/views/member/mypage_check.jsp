<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/mypage_check.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/mypage_check.js' />"></script>
	</head>
	<body> 
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
			<form id="mypage_check_form" method="post" action="<c:url value='/mypage_check'/>">
				<div class="section_wrap">
					<h3 class="semibold txt_30">비밀번호 확인</h3>
                    <div><img src="/images/mypage_lock.png" class="mypage_lock"></div>
                    <div class="gray">
                        ※ 회원님의 소중한 개인정보를 위해 비밀번호를 다시 한번 확인합니다.<br>
                        ※ 비밀번호가 타인에게 노출되지 않게 주의해주세요.
                    </div>
                    <div>
                        <input type="password" class="pw" name="pw" placeholder="비밀번호 입력">
                    </div>
                    <div>
                        <input type="button" class="check bold txt_20 bg_y" name="check" value="확인">
                    </div>
				</div>
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>