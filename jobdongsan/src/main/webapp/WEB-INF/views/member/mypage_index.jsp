<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/mypage_index.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/mypage_index.js' />"></script>
	</head>
	<body> 
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
			<form id="mypage_index_form" method="post" action="<c:url value='/mypage_check'/>">
				<div class="section_wrap">
					<div class="my_jobdongsan">
                        <h3 class="bold txt_40">나의 잡동산</h3>
                        <div class="my_jobdongsan_contents">
                            <div class="my_jobdongsan_info">
                                <img src="<c:url value='/images/mypage_circle.png' />" class="my_jobdongsan_pic">
                                <c:choose>
	                    			<c:when test="${fn:contains(myProfileImg, 'https') }">
		                    			<img class="my_profile_img" src="<c:url value='${myProfileImg}'/>">
		                    		</c:when>
		                    		<c:otherwise>
		                    			<img class="my_profile_img" src="<c:url value='/upload/${myProfileImg}'/>">
		                    		</c:otherwise>
	                    		</c:choose>
                                <div>
                                    <p class="txt_30">${mem.memName }</p>
                                    <p class="txt_30">${mem.memId }</p>
                                </div>
                            </div>
                            <div class="my_jobdongsan_btn">
                                <img src="<c:url value='/images/mypage_update_btn.png' />" class="btn_mypage_update"><br>
                                <img src="<c:url value='/images/mypage_logout_btn.png' />" class="btn_logout">
                            </div>
                        </div>
                    </div>
                    <div class="my_history">
                        <div class="my_history_img">
                            <img src="<c:url value='/images/mypage_cow.png' />" alt="">
                            <img src="<c:url value='/images/mypage_rabbit.png' />" alt="">
                        </div>
                        <div class="my_history_contents">
                            <div class="my_interest">
                                <div class="my_interest_info">
                                    <div class="my_interest_title txt_30">
                                        나의 <b>흥미</b> 탐색
                                    </div>
                                    <div class="my_interest_add">
                                        <img src="<c:url value='/images/mypage_circle.png' />" class="my_interest_pic">
                                        <div>
                                            <p class="txt_30">아직 탐색한 흥미가 없어요</p>
                                            <p class="txt_25">나의 흥미를 알아볼까요?</p>
                                        </div>
                                    </div>
                                    <div class="my_interest_content">
                                        <img src="<c:url value='${myCtgInfo.categoryImg}' />" class="my_interest_pic">
                                        <div>
                                            <p class="txt_30" id="interest_chk">${myCtgInfo.categoryName}</p>
                                            <p class="txt_25">${myCtgInfo.categoryName}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn_interest_div">
                                	<img src="<c:url value='/images/mypage_interest_add.png' />" class="btn_interest_add">
                                	<img src="<c:url value='/images/mypage_interest.png' />" class="btn_interest" onClick = "location.href='<c:url value='mypage_detail'/>'">
                               	</div>
                            </div>
                            <div class="my_job">
                                <div class="my_job_info">
                                    <div class="my_job_title txt_30">
                                        나의 <b>직업</b> 탐색
                                    </div>
                                    <div class="my_job_content">
                                        <div class="my_job_add">
                                            <div><img src="<c:url value='/images/mypage_circle.png' />" class="my_job_add_pic"></div>
                                            <div>
                                                <p class="txt_30">아직 탐색한 직업이 없어요</p>
                                                <p class="txt_25">나의 직업을 알아볼까요?</p>
                                            </div>
                                        </div>
                                        <div class="my_job_like">
                                            <img src="<c:url value='${myJobInfo.jobImg}' />" class="my_job_pic">
                                            <p class="txt_30" id="job_chk">${myJobInfo.jobName}</p>
                                            <p class="txt_25">${myJobInfo.jobInfo}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn_job_div">
                                    <img src="<c:url value='/images/mypage_job_add.png' />" class="btn_job_add">
                                    <img src="<c:url value='/images/mypage_job.png' />" class="btn_job" onClick = "location.href='<c:url value='job_detail/${myJobInfo.jobNo}'/>'">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="my_video">
                        <div class="my_video_text txt_25 gray">진로 · 직업 영상들을 저장하고 볼 수 있어요</div>
                        <div class="my_video_contents">
                            <img src="<c:url value='/images/mypage_left.png' />" class="arrows" id="my_video_left">
                            <div class="my_video_list_text">
                                <p class="txt_30">보고싶은 진로 · 직업 영상를 찜해볼까요?</p>
                                <img src="<c:url value='/images/mypage_my_video_btn.png' />" class="btn_video"> 
                            </div>
                            <div class="my_video_list">
                            	<c:forEach var="myVideo" items="${myVideoList}">
                            		<div class="my_video_pic">
                            			<img src="<c:url value='${myVideo.videoThumbnail}'/>" class="my_video_pic" onClick = "location.href='<c:url value='video_detail/${myVideo.videoNo}'/>'">
                            		</div>
                            	</c:forEach>
                            </div>
                            <img src="<c:url value='/images/mypage_right.png' />" class="arrows" id="my_video_right">
                        </div>
                    </div>
                    <div class="my_map">
                        <div class="my_map_text txt_25 gray">관심있는 직업 체험 장소를 저장할 수 있어요</div>
                        <div class="my_map_contents">
                            <img src="<c:url value='/images/mypage_left.png' />" class="arrows" id="my_map_left">
                            <div class="my_map_list_text">
                                <p class="txt_30">가고싶은 직업 체험 장소를 찜해볼까요?</p>
                                <img src="<c:url value='/images/mypage_my_map_btn.png' />" class="btn_map">
                            </div>
                            <div class="my_map_list">
                               <c:forEach var="myMap" items="${myMapList}">
                               		<div class="my_video_pic" onClick = "location.href='<c:url value='map_detail/${myMap.mapJobNo}'/>'">
                            			<img src="<c:url value='${myMap.mapJobLogo}'/>" class="my_map_pic">
                            		</div>
                            	</c:forEach>
                            </div>
                            <img src="<c:url value='/images/mypage_right.png' />" class="arrows" id="my_map_right">
                        </div>
                    </div>
				</div>
                <div class="background"></div>
                <div class="background2"></div>
                <input type="hidden" name="chk" id="chk" value="1">
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>