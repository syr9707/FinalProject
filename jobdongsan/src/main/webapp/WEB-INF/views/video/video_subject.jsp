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
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoList }" var="video" >
							<c:if test="${not doneLoop}">
							<c:if test="${video.videoCtgNo eq '1' }">
								드림주니어-진로탐사대
							</c:if>
							<c:if test="${video.videoCtgNo eq '2' }">
								드림주니어-탐나는진로탐사대
							</c:if>
							<c:if test="${video.videoCtgNo eq '3' }">
								드림주니어
							</c:if>
							<c:if test="${video.videoCtgNo eq '4' }">
								해양직업의 세계-꿈꾸는 장보고
							</c:if>
							<c:if test="${video.videoCtgNo eq '5' }">
								미래직업가이드
							</c:if>
							<c:if test="${video.videoCtgNo eq '6' }">
								창의적 진로개발-지식채널e
							</c:if>
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
						</div>
						<div class="video_list_btn">
							<button id="videolistbtn" onclick="location.href='<c:url value='/video_index'/>'">목록보기</button >
						</div>
					</div>
					<div class="video_ctg_detail2">
						<div class="video_ctg_content">
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoList }" var="video" >
							<c:if test="${not doneLoop}">
							<c:if test="${video.videoCtgNo eq '1' }">
								여러분들의 꿈을 찾아드립니다.<br>
								"드림 주니어 17학번 대학생 되다" 전국 대학의 다양한 학과를 찾아가 특급수업을 마스터하고 도전 과제를 완수하라!<br>
								진로를 고민하는 초, 중등 학생들에게 구체적인 진로가이드 제시.<br>
								학생들이 궁금해하는 유망한 학과는 물론, 잘 알려지지 않은 이색 학과까지 전국 대학을 직접 찾아 가는 리얼 100% 학과 체험기!!
							</c:if>
							<c:if test="${video.videoCtgNo eq '2' }">
								전국 대학의 다양한 학과를 찾아가 특급 수업을 마스터하고 최종미션을 완수하라!<br>
								전국 대학의 다양한 학과를 보다 생생하게 체험하고 색다른 정보를 소개하는 진로 가이드!<br>
								생동감 있는 교육과 현장감 있는 미션으로 학과를 직접 체험하고 전국의 다양한 학과를 직접 찾아가는 리얼 체험기!
							</c:if>
							<c:if test="${video.videoCtgNo eq '3' }">
								AI 로봇전문가, 무인자동차개발자, 사물인터넷(IoT)전문가 등, 수많은 미래 직업을 직접 찾아가는 리얼 직업 체험기!!<br>
								국내 유일 '리얼 직업 체험 프로그램' 잡동산이 초중등 여러분의 꿈을 찾아 드립니다.
							</c:if>
							<c:if test="${video.videoCtgNo eq '4' }">
								해양관련 지식을 익히고 나누는 배움의 전당 !
							</c:if>
							<c:if test="${video.videoCtgNo eq '5' }">
								미래의 변화에 대하여 충분한 정보를 갖추도록 <br>미래직업에 관한 정보를 잡동산이 제공합니다.
							</c:if>
							<c:if test="${video.videoCtgNo eq '6' }">
								지식채널e는 단편적인 '지식'을 입체적으로 조명해서 시청자에게 '화두'를 던지는 프로그램입니다.<br>
								 제작진이 던지는 화두가 비록 작은 것일지라도, 바쁘게 살아가는 우리 삶 속에서 잠깐 멈춰서서 생각할 수 있는 의미 있는 5분 이 되기를 바랍니다.
							</c:if>
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
						</div>
						<div class="video_snowman">
							<img src="<c:url value='/images/video_snowman.png'/>">
						</div>
					</div>
				</div>
				<div class="video_ctg_list">
					<div id="video_ctg_box" class="video_ctg_box">
						<c:forEach items="${videoList }" var="video" >
							<div class="video_ctg_test">
								<a href="<c:url value='/video_detail/${video.videoNo }'/>" >
									<img class="video_thumbnail" src="<c:url value='${video.videoThumbnail }'/>">
									<img class="video_play" src="<c:url value='/images/video_play.png'/>">
								</a>
								<div class="video_test_name">
									${video.videoName }
								</div>
							</div>
						</c:forEach>
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


































