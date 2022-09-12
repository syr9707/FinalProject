<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/mypage_result.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/mypage_result.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
            <div class="section_wrap">					
                <h3 class="semibold txt_30" id="title">SNS 회원가입</h3>
                <div id="result_box">
                    <div id="result_sns_signup">
                        <b>SNS 회원가입</b>이 완료되었습니다.<br>
                        회원님의 아이디는 해당 이메일 주소이며,<br>
                        임시 비밀번호는 "1234" 입니다.<br>
                        보안을 위해 비밀번호를 변경해주세요.
                    </div>
                </div>
                <input type="button" class="btn_login txt_20 bg_y" value="메인페이지로 이동">						
            </div> <!-- wrap 끝 -->		
            <input type="hidden" id="chk" value="4">
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>