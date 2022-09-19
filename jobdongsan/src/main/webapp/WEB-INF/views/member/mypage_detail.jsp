<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/mypage_detail.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/mypage_detail.js' />"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				var score = "${myCtgNum}";
				var checkMyPromise = "${checkMyPromise}";
				
				if(score == '1'){
			 		$('.char_graph:nth-child(1) img').show();
			 		$('.my_interest_type b').css("color", "#FF8E8E");
			 		$('.my_interest_type_job_title b, .my_interest_type_map_title b').css("color", "#FF8E8E");
			 	}else if(score == '2'){
			 		$('.char_graph:nth-child(2) img').show();
			 		$('.my_interest_type b').css("color", "#89F578");
			 		$('.my_interest_type_job_title b, .my_interest_type_map_title b').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
			 	}else if(score == '3'){
			 		$('.char_graph:nth-child(3) img').show();
			 		$('.my_interest_type b').css("color", "#FBE28A");
			 		$('.my_interest_type_job_title b, .my_interest_type_map_title b').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
			 	}else if(score == '4'){
			 		$('.char_graph:nth-child(4) img').show();
			 		$('.my_interest_type b').css("color", "#33A4E3");
			 		$('.my_interest_type_job_title b, .my_interest_type_map_title b').css("color", "#33A4E3");
			 	}else if(score == '5'){
			 		$('.char_graph:nth-child(5) img').show();
			 		$('.my_interest_type b').css("color", "#F072F2");
			 		$('.my_interest_type_job_title b, .my_interest_type_map_title b').css("color", "#F072F2");
			 	}else if(score == '6'){
			 		$('.char_graph:nth-child(6) img').show();
			 		$('.my_interest_type b').css("color", "#33E3CE");
			 		$('.my_interest_type_job_title b, .my_interest_type_map_title b').css("color", "#33E3CE");
			 	}
				
				if(checkMyPromise == "") {
					$('.my_promise_add_btn').show();
				}else {
					$('.my_promise_btn').show();
				}
				
				$(".dde_graph").animate({height: ${scoreList['score1']} * 25 +"px"}, 1000);
				$(".the_graph").animate({height: ${scoreList['score2']} * 25 +"px"}, 1000);
				$(".mje_graph").animate({height: ${scoreList['score3']} * 25 +"px"}, 1000);
				$(".cje_graph").animate({height: ${scoreList['score4']} * 25 +"px"}, 1000);
				$(".sse_graph").animate({height: ${scoreList['score5']} * 25 +"px"}, 1000);
				$(".ssle_graph").animate({height: ${scoreList['score6']} * 25 +"px"}, 1000);
			});
		</script>
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
                                <c:choose>
	                    			<c:when test="${fn:contains(myProfileImg, 'https://') }">
		                    			<img class="profile_img" src="<c:url value='${myProfileImg}'/>">
		                    		</c:when>
		                    		<c:otherwise>
		                    			<img class="profile_img" src="<c:url value='/upload/${myProfileImg}'/>">
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
                    <div class="my_interest">
                        <div class="my_interest_info">
                            <div class="my_interest_date">
                                <div class="txt_25 gray"><b>어린이</b> <b>진로흥미탐색</b> <b>결과</b></div>
                                <div>
                                	<img src="<c:url value='/images/mypage_promise_add_btn.png' />" class="my_promise_add_btn" onclick="location.href='<c:url value='/interest_my_promise'/>'">
                                	<img src="<c:url value='/images/mypage_promise_btn.png' />" class="my_promise_btn" onclick="location.href='<c:url value='/mypage_my_promise'/>'">
                                </div>
                            </div>
                            <div class="my_interest_info_detail">
                                <div class="my_interest_title">
                                    <p class="txt_30">나에게 가장 적합한 유형은</p><img src="<c:url value='/images/mypage_detail_lollipop.png' />" class="lollipop">
                                </div>
                                <div class="my_interest_type">
                                    <b>${myCtgInfo.categoryName}</b> 입니다. <img src="<c:url value='/images/mypage_detail_donut.png' />">
                                </div>
                                <div class="my_interest_type_info">
                                    <div>
                                        <p>${myCtgInfo.categoryInfo}</p>
                                    </div>
                                    <img src="<c:url value='${myCtgInfo.categoryImg}' />" class="gingerman">
                                </div>
                                <div class="result_graph">
									<div class="char_graph">
										<div class="graph_name">뚝딱이</div>
										<div class="dde_graph"></div>
										<img src="<c:url value='images/interest_star.png' />">
									</div>
									<div class="char_graph">
										<div class="graph_name">탐험이</div>
										<div class="the_graph"></div>
										<img src="<c:url value='images/interest_star.png' />">
									</div>
									<div class="char_graph">
										<div class="graph_name">멋쟁이</div>
										<div class="mje_graph"></div>
										<img src="<c:url value='images/interest_star.png' />">
									</div>
									<div class="char_graph">
										<div class="graph_name">친절이</div>
										<div class="cje_graph"></div>
										<img src="<c:url value='images/interest_star.png' />">
									</div>
									<div class="char_graph">
										<div class="graph_name">씩씩이</div>
										<div class="sse_graph"></div>
										<img src="<c:url value='images/interest_star.png' />">
									</div>
									<div class="char_graph">
										<div class="graph_name">성실이</div>
										<div class="ssle_graph"></div>
										<img src="<c:url value='images/interest_star.png' />">
									</div>
								</div>
                                <div class="my_interest_type_job_title txt_25">
                                    <b>"${myCtgInfo.categoryName}"</b> 유형에게 잘 맞는 대표 직업은?
                                </div>
                                <div class="my_interest_type_job_list">
                                	<c:forEach items="${myCtgJob}" var="ctgJob">
									<c:set var = "score" scope = "session" value = "${myCtgNum}"/>
									<c:if test="${ctgJob.categoryNo eq score}">
                                    <div class="my_interest_type_job" onclick="location.href='<c:url value='/job_detail/${ctgJob.jobNo }'/>'">
                                        <img src="<c:url value='${ctgJob.jobImg}'/>">
                                        <p>${ctgJob.jobName}</p>
                                    </div>
                                    </c:if>
                                    </c:forEach>
                                    <div class="my_interest_type_job_more" onclick="location.href='<c:url value='/job_category/${myCtgNum}'/>'">
                                        <img src="<c:url value='/images/mypage_detail_more.png' />">
                                        <p>더 보러 가기</p>
                                    </div>
                                </div>
                                <div class="my_interest_type_map_title txt_25">
                                    <b>"${myCtgInfo.categoryName}"</b> 유형에게 잘 맞는 체험 장소는?
                                </div>
                                <div class="my_interest_type_map_list">
                                	<c:forEach items="${myCtgMap}" var="ctgMap">
									<c:set var = "score" scope = "session" value = "${myCtgNum}"/>
									<c:if test="${ctgMap.categoryNo eq score}">
                                    <div class="my_interest_type_map" onclick="location.href='<c:url value='/map_detail/${ctgMap.mapJobNo}'/>'">
                                        <div class="mypage_map_img">
                                        <img src="<c:url value='${ctgMap.mapJobLogo}' />">
                                        </div>
                                        <p>${ctgMap.mapJobName}</p>
                                    </div>
                                    </c:if>
                                    </c:forEach>
                                    <div class="my_interest_type_map_more" onclick="location.href='<c:url value="/map_index"/>'">
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