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
								<img src="<c:url value='${video.videoThumbnail }'/>">
								<!-- <video id="jp_video_0" preload="metadata" src="https://cdn.career.go.kr/cnet/real/upload/2014/10/00000046785600054899.mp4" style="width: 0px; height: 0px;"></video> -->
								<video controls>
									<source src="<c:url value='${video.videoLink }'/>" type="video/mp4">
								</video>
							</div>
						</div>
						<div class="video_explain">
							<div class="video_title">
								<div class="video_detail_title">
									${video.videoName } - ${video.videoName2 } 
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
									${video.videoStory }
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
								int count = 0;
							%>
							<c:set var="doneLoop" value="false" />
							<c:forEach items="${videoList }" var="videoList">
							<c:if test="${not doneLoop}">
							<c:if test="${videoList.videoNo ne video.videoNo }">
								<div class="video_similar_box">
									<div class="video_similar_detail">
										<a href="<c:url value='/video_detail/${videoList.videoNo}'/>" >
										<img class="video_thumbnail" src="<c:url value='${videoList.videoThumbnail}'/>">
										<img class="video_play" src="<c:url value='/images/video_play.png'/>"></a>
									</div>
									<div class="video_similar_name">
										${videoList.videoName } - ${videoList.videoName2 }
									</div>
								</div>
							<%
								count++;
								if(count == 6) {
							%>
							<c:set var="doneLoop" value="true"/>
							<%
								}								
							%>
							</c:if>
							</c:if>
							</c:forEach>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
	
	<script>
	$(document).ready(function(){
		
		$('.video_star').click(function() {
			if(${empty sessionScope.sid}){
	    	   if(confirm("로그인이 필요한 서비스 입니다.\n로그인 하시겠습니까?")) {
		   			location.href="<c:url value='/login'/>";
		   		}
		   	}
			else {
		   		if(confirm("나의 관심 영상으로 선택하시겠습니까?")) {
		   			
		   			$.ajax({
		   				type:"post",
		   				url:"/insert_video",
		   				data:{"videoNo":${videoNo}},
		   				success:function(result) {
		   					if(result == "0") {
		   						alert("관심 영상에 저장되었습니다.\n나의 잡동산 페이지에서 확인하실 수 있습니다.");
		   						
		   					}
		   					else if(result == "1") {
		   						
		   						if(confirm("나의 관심 영상에 존재합니다. 삭제하시겠습니까?")) {
		   							$.ajax({
			   							type:"post",
			   			   				url:"/delete_video",
			   			   				data:{"videoNo":${videoNo}},
			   			   				success:function(result) {
			   			   					alert("나의 관심 영상에서 삭제되었습니다.");
			   			   				}
			   						});
		   						}
		   					}
		   					
		   				},
		   				error:function() {
		   					alert("전송 실패");
		   				}
		   			});
		   		}
		   	}
		});
		
	});
	</script>
	
</html>









































