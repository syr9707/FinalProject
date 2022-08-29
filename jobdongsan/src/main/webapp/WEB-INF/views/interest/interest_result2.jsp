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
				<c:forEach var="ctg" items="${ctgList}">
				<div class="char_profile">
					<img src="<c:url value='${ctg.categoryImg}'/>">
					<div class="char_name">${ctg.categoryName}</div>
				</div>
				</c:forEach>
			</div>
			<div class="box_line"></div>
			<!-- 유형 리스트 -->
			<c:forEach var="ctg" items="${ctgList}">
			<div class="char_explain_box">
				<div class="char_explain">
					<div class="char_explain_title">${ctg.categoryName}</div>
					<div class="char_explain_text">${ctg.categoryInfo}</div>
				</div>
				<div class="char_job_box">
					<p><span>"${ctg.categoryName}"</span>형에게 잘 맞는 대표 직업은?</p>
					<div class="char_job">
						<!-- 유형에 따른 직업정보 -->
						<c:forEach items="${CtgJobList}" var="ctgJob" varStatus="status" end="4">
						<div class="job_kind" onclick="parent.location.href='<c:url value='/job_detail/${ctgJob.jobNo }'/>'">
							<img src="<c:url value='${ctgJob.jobImg}'/>">
							<p>${ctgJob.jobName}</p>
						</div>
						</c:forEach>	
						<div class="job_kind">
							<img src="<c:url value='images/interest_zoom-in.png' />">
							<p>더 보러 가기</p>
						</div>
					</div>
				</div>
			</div>
			<div class="next_btn">
				<img src="<c:url value='images/direction.png' />">
				<p><span>"${ctg.categoryName}"</span>형에게 잘 맞는<br>체험 장소 보러가기</p>
			</div>
			</c:forEach>
		</section>
	</body>
</html>