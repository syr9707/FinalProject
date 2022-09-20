<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/video_category.css' />"/>
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
							<c:if test="${video.categoryNo eq '1' }">
								<b class="a">뚝딱이</b> 유형 영상 
							</c:if>
							<c:if test="${video.categoryNo eq '2' }">
								<b class="b">탐험이</b> 유형 영상
							</c:if>
							<c:if test="${video.categoryNo eq '3' }">
								<b class="c">멋쟁이</b> 유형 영상
							</c:if>
							<c:if test="${video.categoryNo eq '4' }">
								<b class="d">친절이</b> 유형 영상
							</c:if>
							<c:if test="${video.categoryNo eq '5' }">
								<b class="e">씩씩이</b> 유형 영상
							</c:if>
							<c:if test="${video.categoryNo eq '6' }">
								<b class="f">성실이</b> 유형 영상
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
							<c:if test="${video.categoryNo eq '1' }">
								손재주가 있거나 만들기를 좋아해요.<br>
								만들기에 필요한 도구나 기계를 잘 다뤄요.<Br>
								그리고 활동적이고 몸을 움직이는 것을 좋아해요.<br>
								뚝딱이는 솔직하고 성실하면서도 수줍음이 많은 편이에요.
							</c:if>
							<c:if test="${video.categoryNo eq '2' }">
								세심히 관찰하거나 합리적이며 정확한 것을 좋아해요.<br>
								창의적이고 새로운 일에 도전하는 것도 좋아하죠.<br>
								그래서 탐험이는 논리적이며 탐구심, 독립성, 호기심이 많다는 이야기도 자주 들어요.
							</c:if>
							<c:if test="${video.categoryNo eq '3' }">
								감정이 풍부하고 상상력이 좋아서 자신만의 세계로 빠져드는 것을 좋아해요.<br>
								스스로 옷과 머리를 멋있게 꾸미거나 독특한 방식으로 자신을 표현해요.<br>
								멋쟁이 중에는 글쓰기, 음악, 미술을 좋아하는 친구들이 많답니다.
							</c:if>
							<c:if test="${video.categoryNo eq '4' }">
								친구와 즐겁고 사이좋게 지내고 함께 활동하는 것을 좋아해요.<br>
								어려운 사람을 보면, 무엇을 도와줄까 생각하고 학교나 집에서 봉사하는 것을 잘하죠.<br>
								친절이는 이해심이 많고 따뜻한 마음을 가진 사람이에요.
							</c:if>
							<c:if test="${video.categoryNo eq '5' }">
								수업 시간에 자신 있게 발표를 잘하고 모든 일을 열심히 해요.<br>
								친구들을 설득하고 이끄는 능력이 있어요.<br>
								씩씩이는 사람들과 잘 어울리고, 모험심이 강한 사람이에요.
							</c:if>
							<c:if test="${video.categoryNo eq '6' }">
								자신이 계획한 것을 꾸준히 실천하는 것을 좋아하고, 노트에 기록, 정리하는 일을 잘해요.<br>
								성실이는 정직하고 계산하는 것 을 좋아하죠.<br>
								그리고 책임감도 강하고, 친구들과 약속이나 학교 규칙과 질서도 잘 지키는 사람이에요.
							</c:if>
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
						</div>
						<div class="video_snowman">
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoList }" var="test" >
							<c:if test="${not doneLoop}">
								<img src="<c:url value='${test.categoryImg }'/>">
							<c:set var="doneLoop" value="true"/>
							</c:if>
							</c:forEach>
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
									<div class="video_test_name">
										${video.videoName }
									</div>
								</a>
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