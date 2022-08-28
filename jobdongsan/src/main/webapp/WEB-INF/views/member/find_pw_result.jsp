<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/find_pw_result.css' />"/>
		<!-- js -->
		<script src=""></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			<form id="find_pw_form" method="post" action="<c:url value='/find_pw'/>">
				<div class="section_wrap">
					<h3 class="semibold txt_30">비밀번호 찾기</h3>
					<div id="result_box">
						<div id="result_find_pw">
							<b>${mem.memId }</b> 회원님의 임시 비밀번호가 발급되었습니다. <br>
							<div class="gray">※ 본 비밀번호는 3일간 유효합니다. </div>
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