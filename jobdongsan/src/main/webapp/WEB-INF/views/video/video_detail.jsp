<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/video_detail.css' />"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- js -->
		<script src="<c:url value='/js/video_detail.js' />"></script>
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
				<div class="video_detail_content">
					<div class="video_detail_play">
						<div class="video_play_box">
							<div class="video_cookie">
								<img src="<c:url value='/images/video_detail_tv.png'/>">
							</div>
							<div class="video_content">
								<img src="<c:url value='https://www.career.go.kr/cnet/commonBiz/imageViewBySer.do?seq=37863'/>">
							</div>
						</div>
						<div class="video_explain">
							<div class="video_title">
								<div class="video_detail_title">
									가상현실 전문가 - 직업 가이드
								</div>
								<div class="video_good">
									<div class="video_star">★</div>
									<div class="video_star2">관심 영상</div>
								</div>
							</div>
							<div class="video_explain_detail">
								<div class="video_explain_title">
									<div class="video_explain_img">
										<img src="<c:url value='/images/videocall.png'/>">
									</div>
									<div class="video_explain_title2">
										동영상 설명
									</div>
								</div>
								<div class="video_detail">
									청소년들이 직업의 변화에 맞추어 진로를 결정할 수 있도록 교육부와 한국직업능력개발원에서 미래 직업을 안내합니다.
									누구도 정보를 조작할 수 없는 블록 체인 기술을 개발해요. 블록 체인 전문가.
									청소년들이 직업의 변화에 맞추어 진로를 결정할 수 있도록 교육부와 한국직업능력개발원에서 미래 직업을 안내합니다.
									누구도 정보를 조작할 수 없는 블록 체인 기술을 개발해요. 블록 체인 전문가.
									청소년들이 직업의 변화에 맞추어 진로를 결정할 수 있도록 교육부와 한국직업능력개발원에서 미래 직업을 안내합니다.
									누구도 정보를 조작할 수 없는 블록 체인 기술을 개발해요. 블록 체인 전문가. -> 6줄 정도 까지
								</div>
							</div>
						</div>
					</div>
					<div class="video_similar">
						<div class="video_similar_title">
							비슷한 영상이에요
						</div>
						<div class="video_similar_content">
							<%
								for(int i = 0; i < 6; i++) {
							%>
							
							<div class="video_similar_box">
								<div class="video_similar_detail">
									<a href="<c:url value='/video_detail'/>" >
									<img src="<c:url value='https://www.career.go.kr/cnet/commonBiz/imageViewBySer.do?seq=37867'/>"></a>
								</div>
								<div class="video_similar_name">
									'경찰경호과’ 수업에 도전하다!
								</div>
							</div>
							
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>









































