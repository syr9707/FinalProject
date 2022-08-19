<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest_result2.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_result2.js' />"></script>
	</head>
	<body>
		<section>
			<div class="char_profile_box">
				<div class="char_profile">
					<img src="<c:url value='images/interest_dde.png' />">
					<div class="char_name">뚝딱이</div>
				</div>
				<div class="char_profile">
					<img src="<c:url value='images/interest_dde.png' />">
					<div class="char_name">탐험이</div>
				</div>
				<div class="char_profile">
					<img src="<c:url value='images/interest_dde.png' />">
					<div class="char_name">멋쟁이</div>
				</div>
				<div class="char_profile">
					<img src="<c:url value='images/interest_dde.png' />">
					<div class="char_name">친절이</div>
				</div>
				<div class="char_profile">
					<img src="<c:url value='images/interest_dde.png' />">
					<div class="char_name">씩씩이</div>
				</div>
				<div class="char_profile">
					<img src="<c:url value='images/interest_dde.png' />">
					<div class="char_name">성실이</div>
				</div>
			</div>
			<div class="box_line"></div>
			<div class="char_explain_box">
				<div class="char_explain">
					<div class="char_explain_title">뚝딱이</div>
					<div class="char_explain_text">
						손재주가 있거나 만들기를 좋아해요.<br>
						만들기에 필요한 도구나 기계를 잘 다뤄요.<br>
						그리고 활동적이고 몸을 움직이는 것을 좋아해요.<br>
						뚝딱이는 솔직하고 성실하면서도 수줍음이 많은 편이에요.<br>
					</div>
				</div>
				<div class="char_job_box">
					<p><span>"뚝딱이"</span>형에게 잘 맞는 대표 직업은?</p>
					<div class="char_job">
						<div class="job_kind">
							
						</div>
						<div class="job_kind">
						
						</div>
						<div class="job_kind">
						
						</div>
					</div>
					<div class="char_job">
						<div class="job_kind">
						
						</div>
						<div class="job_kind">	
							
						</div>
						<div class="job_kind">
							<img src="<c:url value='images/interest_zoom-in.png' />">
							<p>더 보러 가기</p>
						</div>
					</div>
				</div>
			</div>
			<div class="next_btn">
				<img src="<c:url value='images/direction.png' />">
				<p>나의 다짐 작성하기</p>
			</div>
		</section>
	</body>
</html>