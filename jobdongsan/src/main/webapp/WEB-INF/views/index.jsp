<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/index.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/index.js' />"></script>
	</head>
	<body> 
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
            <div class="section_wrap">
                <div class="main_menu_dongsan">
                    <div class="dongsan_wrap">
                        <img src="<c:url value='/images/main_tree.png' />" id="main_tree">
                        <img src="<c:url value='/images/main_house.png' />" id="main_house">
                        <img src="<c:url value='/images/main_sun.png' />" id="main_sun">
                        <img src="<c:url value='/images/main_bar.png' />" id="main_bar">
                        <img src="<c:url value='/images/main_chocolate.png' />" id="main_chocolate">
                        <img src="<c:url value='/images/main_cupcake.png' />" id="main_cupcake">
                        <img src="<c:url value='/images/main_donut.png' />" id="main_donut">
                        <img src="<c:url value='/images/main_gingerbread_man.png' />" id="main_gingerbread_main">
                        <img src="<c:url value='/images/main_icecream.png' />" id="main_icecream">
                    </div>
                </div>
                <div class="main_menu_text">
                    <img src="<c:url value='/images/main_car.png' />" id="main_car">
                </div>
                <div class="today_info">
                    <img src="<c:url value='/images/main_today_char.png' />" id="main_today_char">
                    <div class="today_job">
                        <h3>오늘의 <b>직업</b></h3>
                        <div class="today_job_wrap" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
                            <div class="today_job_pic">
                                <img src="<c:url value='${job.jobImg}'/>" id="main_today_job">
                            </div>
                            <div class="today_job_info">
                            	❂ ${job. jobName}<br><br>
                                ${job. jobInfo}
                            </div>
                        </div>
                    </div>
                    <div class="today_map">
                        <h3>오늘의 <b>체험</b></h3>
                        <div class="today_map_wrap" onclick="location.href='<c:url value='/map_detail/${map.mapJobNo }'/>'">
                            <div class="today_map_pic">
                                <img src="<c:url value='${map. mapJobLogo}'/>" id="main_today_map">
                            </div>
                            <div class="today_map_info">
                                ❂ ${map. mapJobName}<br><br>
                                ${map. mapJobAdd}
                            </div>
                        </div>
                    </div>
                    <img src="<c:url value='/images/main_today_cookie.png' />" id="main_today_cookie">
                </div>
                <div class="today_video">
                    <h3>오늘의 <b>영상</b></h3>
                    <div class="today_video_text"><b>잡</b><b>동</b><b>산</b>의 <b>다양한 직업</b> 영상부터<br>과자 친구들이 자유롭게 나누고 싶은 달콤 가득한 영상까지,<br>이곳에서 만나보세요!</div>
                    <div class="today_video_img">
                    	<div id="main_video1" onclick="location.href='<c:url value='/video_detail/${video.videoNo }'/>'">
                    		<img src="<c:url value='${video.videoThumbnail }'/>" id="main_video1_img">
                    		<p>${video.videoName }</p>
                    	</div>
                    	<div id="main_video2" onclick="location.href='<c:url value='/video_detail/${video2.videoNo }'/>'">
                        	<img src="<c:url value='${video2.videoThumbnail }'/>" id="main_video2_img">
                        	<p>${video2.videoName }</p>
                        </div>
                    </div>
                    <img src="<c:url value='/images/main_biscuit.png' />" id="main_biscuit">
                    <img src="<c:url value='/images/main_mould.png' />" id="main_mould">
                </div>
            </div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>