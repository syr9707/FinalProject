<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/find_id.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/find_id.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			<form id="find_id_form" method="post" action="<c:url value='/find_id'/>">
				<div class="section_wrap">
					<h3 class="semibold txt_30">아이디 찾기</h3>
					<div class="gray">
                    	※ 가입시 등록한 이메일을 통해 찾을 수 있습니다.
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
	                    <input type="button" name="email_code" class="email_code semibold" value="이메일로 코드 발송하기">
	                    <div class="input_code">
	                    <p>코드 입력</p>
	                    <input type="text" name="code" class="code">
               		</div>
               		<input type="button" name="code_check" class="code_check semibold" value="확인">
				</div><!-- wrap 끝 -->
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>