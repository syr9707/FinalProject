<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/find_pw.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/find_pw.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			<form id="find_id_form" method="post" action="<c:url value='/find_id'/>">
				<div class="section_wrap">
					<h3 class="semibold txt_30">비밀번호 찾기</h3>
					<div class="gray">
                        ※ 임시 비밀번호를 발급받을 수 있습니다.
                    </div>
                    <div class="input_id">
                    	<p>아이디</p>
                        <input type="text" name="id" class="id">
                    </div>
                    <p>이메일</p>
                    <div class="email_input" class="email_input">
                        <input type="text" name="email1" class="email1">@
                        <input type="text" name="email2" class="email2" placeholder="직접 입력">
                        <select name="email3" class="email3">
                            <option value="" selected>직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="nate.com">nate.com</option>
                        </select> 
                    </div>
                    <div class="error red" id="email_error">이메일 주소를 다시 확인해주세요.</div>
                    <input type="button" name="temp_pw" class="temp_pw semibold" value="임시 비밀번호 발급받기">
				</div><!-- wrap 끝 -->
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>