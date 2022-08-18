<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<form id="mypage_index_form" method="post" action="<c:url value='/mypage_index'/>">
				<div class="section_wrap">
					<div class="my_jobdongsan">
                        <h3 class="bold txt_40">나의 잡동산</h3>
                        <div class="my_jobdongsan_contents">
                            <div class="my_jobdongsan_info">
                                <img src="<c:url value='/images/mypage_circle.png' />" class="my_jobdongsan_pic">
                                <div>
                                    <p class="txt_30">홍길동</p>
                                    <p class="txt_30">aaaaaa</p>
                                </div>
                            </div>
                            <div class="my_jobdongsan_btn">
                                <img src="<c:url value='/images/mypage_update_btn.png' />"><br>
                                <img src="<c:url value='/images/mypage_logout_btn.png' />">
                            </div>
                        </div>
                    </div>
                    <div class="my_history">
                        <div class="my_interest">
                            <div class="my_interest_info">
                                <div class="my_interest_title txt_30">
                                    나의 <b>흥미</b> 탐색
                                </div>
                                <div class="my_interest_content">
                                    <div><img src="<c:url value='/images/mypage_circle.png' />" class="my_interest_pic"></div>
                                    <div>
                                        <p class="txt_30">아직 탐색한 흥미가 없어요</p>
                                        <p class="txt_25">나의 흥미를 알아볼까요?</p>
                                    </div>
                                </div>
                                <div><img src="<c:url value='/images/mypage_interest.png' />"></div>
                            </div>
                            <div class="btn_my_interest"></div>
                        </div>
                        <div class="my_job">
                            <div class="my_job_info">
                                <div class="my_job_title txt_30">
                                    나의 <b>직업</b> 탐색
                                </div>
                                <div class="my_job_content">
                                    <div><img src="<c:url value='/images/mypage_circle.png' />" class="my_job_pic"></div>
                                    <div>
                                        <p class="txt_30">아직 탐색한 직업이 없어요</p>
                                        <p class="txt_25">나의 직업을 알아볼까요?</p>
                                    </div>
                                </div>
                                <div><img src="<c:url value='/images/mypage_job.png' />"></div>
                            </div>
                            <div class="btn_my_job"></div>
                        </div>
                    </div>
                    <div class="my_video">
                        <div class="txt_30 gray">진로 · 직업 영상들을 저장하고 볼 수 있어요</div>
                        <div>
                            <img src="<c:url value='/images/mypage_left.png' />">
                            <div>
                                <p class="txt_30">보고싶은 진로 · 직업 영상를 찜해볼까요?</p>
                                <img src="<c:url value='/images/mypage_my_video_btn.png' />"> <c:url value='' />
                            </div>
                            <img src="<c:url value='/images/mypage_my_video_pic.png' />" class="my_video_pic">
                            <img src="<c:url value='/images/mypage_my_video_pic.png' />" class="my_video_pic">
                            <img src="<c:url value='/images/mypage_my_video_pic.png' /> " class="my_video_pic">
                            <img src="<c:url value='/images/mypage_right.png' />">
                        </div>
                    </div>
                    <div class="my_map">
                        <div class="txt_30 gray">관심있는 직업 체험 장소를 저장할 수 있어요</div>
                        <div>
                            <img src="<c:url value='/images/mypage_left.png' />">
                            <div>
                                <p class="txt_30">가고싶은 직업 체험 장소를 찜해볼까요?</p>
                                <img src="<c:url value='/images/mypage_my_map_btn.png' />">
                            </div>
                            <img src="<c:url value='/images/mypage_my_video_pic.png' /> " class="my_video_pic">
                            <img src="<c:url value='/images/mypage_my_video_pic.png' /> " class="my_video_pic">
                            <img src="<c:url value='/images/mypage_my_video_pic.png' /> " class="my_video_pic">
                            <img src="<c:url value='/images/mypage_right.png' />">
                        </div>
                    </div>
				</div>
                <div class="background"></div>
                <div class="background2"></div>
                <div class="my_video_title"><img src="<c:url value='/images/mypage_my_video_title.png' />"></div>
                <div class="my_map_title"><img src="<c:url value='/images/mypage_my_map_title.png' />"></div>
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>