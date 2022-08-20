<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/video_subject.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/video_subject.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			<div class="job_background">
				<%-- <img src="<c:url value='/images/background.png'/>"> --%>
			</div>
			<div id="wrap">
				<div class="video_head">
					<div class="video_headname">
						어린이 직업 진로 동영상
					</div>
				</div>
				<div class="video_category">
					<div class="video_ctg_detail">
						<div class="video_ctg_title">
							드림주니어-진로탐사대
						</div>
						<div class="video_list_btn">
							<button id="videolistbtn" onclick="location.href='<c:url value='/video_index'/>'">목록보기</button >
						</div>
					</div>
					<div class="video_ctg_detail2">
						<div class="video_ctg_content">
							여러분들의 꿈을 찾아드립니다. "드림 주니어 17학번 대학생 되다" 전국 대학의 다양한 학과를 찾아가 특급수업을 마스터하고 도전 과제를 완수하라! 
							진로를 고민하는 초, 중등 학생들에게 구체적인 진로가이드 제시. 
							학생들이 궁금해하는 유망한 학과는 물론, 잘 알려지지 않은 이색 학과까지 전국 대학을 직접 찾아 가는 리얼 100% 학과 체험기!!
						</div>
						<div class="video_snowman">
							<img src="<c:url value='/images/video_snowman.png'/>">
						</div>
					</div>
				</div>
				<div class="video_ctg_list">
					<div class="video_ctg_box">
						<%
							for(int i = 0; i < 12; i++) {
						%>
						
						<div class="video_ctg_test">
							<a href="<c:url value='/video_detail'/>" >
							<img class="video_thumbnail" src="<c:url value='https://www.career.go.kr/cnet/commonBiz/imageViewBySer.do?seq=37863'/>"></a>
							<img class="video_play" src="<c:url value='/images/video_play.png'/>">
						</div>
						
						<%
							}
						%>
					</div>
					
					<!-- 더보기 버튼 클릭 시 보여질 영역 -->
					<div class="video_ctg_box2">	
						<%
							for(int i = 0; i < 6; i++) {
						%>
						
						<div class="video_ctg_test2">
							<a href="<c:url value='/video_detail'/>" >
							<img class="video_thumbnail" src="<c:url value='https://www.career.go.kr/cnet/commonBiz/imageViewBySer.do?seq=37865'/>"></a>
							<img class="video_play" src="<c:url value='/images/video_play.png'/>">
						</div>
						
						<%
							}
						%>
						
						<%
			               	int count = 6;
			               	int num = 0;
			               	if(count % 4 != 0) {
			               		num = 4 - (count % 4);
			               	}
			               	for(int i = 0; i < num; i++) {
			            %>
			               
			            <div class="video_ctg_test3"></div>
			               
			            <%
			            	}
			            %>
					</div>	
					
				</div>
				<div class="video_ctg_more">
					<div class="video_ctg_btn">
						<button id="videoctgbtn">더보기</button >
					</div>
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>


































