<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/find_id_result.css' />"/>
		<!-- js -->
		<script src=""></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			<form id="find_id_form" method="post" action="<c:url value='/find_id'/>">
				<div class="section_wrap">
				<h3 class="semibold txt_30">아이디 찾기</h3>
				<div id="result_box">
					<div id="result_find_id">
						<b>채동혁</b> 회원님의 아이디는 <br>
						<b>xlawkdsla123</b> 입니다.
					</div>
				</div>
				<input type="button" name="find_id_login" class="find_id_login" onclick="location.href='<c:url value='/login'/>';" value="로그인">
				</div> <!-- wrap 끝 -->
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>