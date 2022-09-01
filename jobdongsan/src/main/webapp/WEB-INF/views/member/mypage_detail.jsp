<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/mypage_detail.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/mypage_detail.js' />"></script>
	</head>
	<body> 
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
			<form id="mypage_detail_form" method="post" action="<c:url value='/mypage_check'/>">
				<div class="section_wrap">
					<div class="my_jobdongsan">
                        <h3 class="bold txt_40">나의 잡동산</h3>
                        <div class="my_jobdongsan_contents">
                            <div class="my_jobdongsan_info">
                                <img src="<c:url value='/images/mypage_circle.png' />" class="my_jobdongsan_pic">
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
                    <div class="my_interest">
                        <div class="my_interest_list">
                            <div class="my_interest_contents">
                                <p class="txt_20 gray">2022년 08월 12일</p>
                                <p class="txt_20">나의 어린이 흥미유형은<br> '뚝딱이'예요.</p>
                            </div>
                            <div class="my_interest_contents">
                                <p class="txt_20 gray">2022년 08월 12일</p>
                                <p class="txt_20">나의 어린이 흥미유형은<br> '뚝딱이'예요.</p>
                            </div>
                        </div>
                        <div class="my_interest_info">
                            <div class="my_interest_date">
                                <div class="txt_25 gray"><i class="fa-regular fa-clock"></i>2022년 08월 12일의 <b>어린이</b> <b>진로흥미탐색</b> <b>결과</b></div>
                                <div><img src="<c:url value='/images/mypage_promise_btn.png' />" class="my_promise_btn"></div>
                            </div>
                            <div class="my_interest_info_detail">
                                <div class="my_interest_title">
                                    <p class="txt_30">나에게 가장 적합한 유형은</p><img src="<c:url value='/images/mypage_detail_lollipop.png' />" class="lollipop">
                                </div>
                                <div class="my_interest_type">
                                    <b>뚝딱이</b> 입니다. <img src="<c:url value='/images/mypage_detail_donut.png' />">
                                </div>
                                <div class="my_interest_type_info">
                                    <div>
                                        <p>손재주가 있거나 만들기를 좋아해요.</p>
                                        <p>만들기에 필요한 도구나 기계를 잘 다뤄요.</p>
                                        <p>그리고 활동적이고 몸을 움직이는 것을 좋아해요.</p>
                                        <p>뚝딱이는 솔직하고 성실하면서도 수줍음이 많은 편이에요.</p>
                                    </div>
                                    <img src="<c:url value='/images/mypage_detail_ginger.png' />" class="gingerman">
                                </div>
                                <div class="my_interest_type_graph">
                                    <div class="dduk">
                                        <div class="dduk_graph"></div>
                                        <div class="txt_25">뚝딱이</div>
                                    </div>
                                    <div class="tam">
                                        <div class="tam_graph"></div>
                                        <div class="txt_25">탐험이</div>
                                    </div>
                                    <div class="meot">
                                        <div class="meot_graph"></div>
                                        <div class="txt_25">멋쟁이</div>
                                    </div>
                                    <div class="chin">
                                        <div class="chin_graph"></div>
                                        <div class="txt_25">친절이</div>
                                    </div>
                                    <div class="ssik">
                                        <div class="ssik_graph"></div>
                                        <div class="txt_25">씩씩이</div>
                                    </div>
                                    <div class="seong">
                                        <div class="seong_graph"></div>
                                        <div class="txt_25">성실이</div>
                                    </div>
                                    <div class="star">
                                        <img src="<c:url value='/images/mypage_interest_star.png' />" class="graph_star">
                                    </div>
                                </div>
                                <div class="my_interest_type_job_title txt_25">
                                    "<b>뚝딱이</b>" 유형에게 잘 맞는 대표 직업은?
                                </div>
                                <div class="my_interest_type_job_list">
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job1.png' />">
                                        <p>응급구조사</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job2.png' />">
                                        <p>직업군인</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job3.png' />">
                                        <p>안경사</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job4.png' />">
                                        <p>토목공학 기술자</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job5.png' />">
                                        <p>요리사</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job6.png' />">
                                        <p>운동선수</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_job7.png' />">
                                        <p>프로게이머</p>
                                    </div>
                                    <div class="my_interest_type_job">
                                        <img src="<c:url value='/images/mypage_detail_more.png' />">
                                        <p>더 보러 가기</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
                <div class="background"></div>
                <input type="hidden" name="chk" id="chk" value="1">
			</form>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>