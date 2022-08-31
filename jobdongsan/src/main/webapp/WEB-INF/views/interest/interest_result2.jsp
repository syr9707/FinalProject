<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest_result2.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_result2.js' />"></script>
		<script type="text/javascript">
		 $(document).ready(function(){
			if(${maxScoreKeyNum} == 1){
				$('.char_explain_box:nth-child(3)').show();
				$('.char_explain_box:not(:nth-child(3))').hide();
				$('.next_btn:nth-child(4)').show();
				$('.next_btn:not(:nth-child(4))').hide();
				$('.char_job_box span').css("color", "#FF8E8E");
		 		$('.next_btn span').css("color", "#FF8E8E");
			}else if(${maxScoreKeyNum} == 2){
				$('.char_explain_box:nth-child(5)').show();
		 		$('.char_explain_box:not(:nth-child(5))').hide();
		 		$('.next_btn:nth-child(6)').show();
				$('.next_btn:not(:nth-child(6))').hide();
				$('.char_job_box span').css("color", "#89F578");
		 		$('.next_btn span').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
			}else if(${maxScoreKeyNum} == 3){
				$('.char_explain_box:nth-child(7)').show();
		 		$('.char_explain_box:not(:nth-child(7))').hide();
		 		$('.next_btn:nth-child(8)').show();
				$('.next_btn:not(:nth-child(8))').hide();
				$('.char_job_box span').css("color", "#FBE28A");
		 		$('.next_btn span').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
			}else if(${maxScoreKeyNum} == 4){
				$('.char_explain_box:nth-child(9)').show();
		 		$('.char_explain_box:not(:nth-child(9))').hide();
		 		$('.next_btn:nth-child(10)').show();
				$('.next_btn:not(:nth-child(10))').hide();
				$('.char_job_box span').css("color", "#33A4E3");
		 		$('.next_btn span').css("color", "#33A4E3");
			}else if(${maxScoreKeyNum} == 5){
				$('.char_explain_box:nth-child(11)').show();
		 		$('.char_explain_box:not(:nth-child(11))').hide();
		 		$('.next_btn:nth-child(12)').show();
				$('.next_btn:not(:nth-child(12))').hide();
				$('.char_job_box span').css("color", "#F072F2");
		 		$('.next_btn span').css("color", "#F072F2");
			}else if(${maxScoreKeyNum} == 6){
				$('.char_explain_box:nth-child(13)').show();
		 		$('.char_explain_box:not(:nth-child(13))').hide();
		 		$('.next_btn:nth-child(14)').show();
				$('.next_btn:not(:nth-child(14))').hide();
				$('.char_job_box span').css("color", "#33E3CE");
		 		$('.next_btn span').css("color", "#33E3CE");
			}
		 });
		</script>
	</head>
	<body>
		<section>
			<div class="char_profile_box">
				<c:forEach var="ctg" items="${ctgList}">
				<div class="char_profile">
					<img src="<c:url value='${ctg.categoryImg}'/>">
					<div class="char_name">${ctg.categoryName}</div>
				</div>
				</c:forEach>
			</div>
			<div class="box_line"></div>
			<!-- 유형 리스트 -->
			<c:forEach var="ctg" items="${ctgList}">
			<div class="char_explain_box">
				<div class="char_explain">
					<div class="char_explain_title">${ctg.categoryName}</div>
					<div class="char_explain_text">${ctg.categoryInfo}</div>
				</div>
				<div class="char_job_box">
					<p><span>"${ctg.categoryName}"</span>형에게 잘 맞는 대표 직업은?</p>
					<div class="char_job">
						<!-- 유형에 따른 직업정보 -->
						<c:forEach items="${CtgJobList}" var="ctgJob" varStatus="status">
						<c:set var = "score" scope = "session" value = "${ctg.categoryNo}"/>
						<c:if test="${ctgJob.categoryNo eq score}">
						<div class="job_kind job_count" onclick="parent.location.href='<c:url value='/job_detail/${ctgJob.jobNo }'/>'">
							<img src="<c:url value='${ctgJob.jobImg}'/>">
							<p>${ctgJob.jobName}</p>
						</div>
						</c:if>
						</c:forEach>	
						<div class="job_kind" onclick="parent.location.href='<c:url value='/job_category/${ctg.categoryNo}'/>'">
							<img src="<c:url value='images/interest_zoom-in.png' />">
							<p>더 보러 가기</p>
						</div>
					</div>
				</div>
			</div>
			<div class="next_btn">
				<img src="<c:url value='images/direction.png' />">
				<p><span>"${ctg.categoryName}"</span>형에게 잘 맞는<br>체험 장소 보러가기</p>
			</div>
			</c:forEach>
		</section>
	</body>
</html>