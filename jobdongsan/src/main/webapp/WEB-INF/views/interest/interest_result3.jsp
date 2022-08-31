<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest_result3.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_result3.js' />"></script>
		<script type="text/javascript">
		 $(document).ready(function(){
			if(${maxScoreKeyNum} == 1){
				$('.char_explain:nth-child(1)').show();
		 		$('.char_explain:not(:nth-child(1))').hide();
		 		$('.char_map:nth-child(1)').show();
		 		$('.char_map:not(:nth-child(1))').hide();
		 		$('.char_explain span').css({"color": "#FF8E8E", "text-shadow": ""});
			}else if(${maxScoreKeyNum} == 2){
				$('.char_explain:nth-child(2)').show();
		 		$('.char_explain:not(:nth-child(2))').hide();
		 		$('.char_map:nth-child(2)').show();
		 		$('.char_map:not(:nth-child(2))').hide();
		 		$('.char_explain span').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
			}else if(${maxScoreKeyNum} == 3){
				$('.char_explain:nth-child(3)').show();
		 		$('.char_explain:not(:nth-child(3))').hide();
		 		$('.char_map:nth-child(3)').show();
		 		$('.char_map:not(:nth-child(3))').hide();
		 		$('.char_explain span').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
			}else if(${maxScoreKeyNum} == 4){
				$('.char_explain:nth-child(4)').show();
		 		$('.char_explain:not(:nth-child(4))').hide();
		 		$('.char_map:nth-child(4)').show();
		 		$('.char_map:not(:nth-child(4))').hide();
		 		$('.char_explain span').css({"color": "#33A4E3", "text-shadow": ""});
			}else if(${maxScoreKeyNum} == 5){
				$('.char_explain:nth-child(5)').show();
		 		$('.char_explain:not(:nth-child(5))').hide();
		 		$('.char_map:nth-child(5)').show();
		 		$('.char_map:not(:nth-child(5))').hide();
		 		$('.char_explain span').css({"color": "#F072F2", "text-shadow": ""});
			}else if(${maxScoreKeyNum} == 6){
				$('.char_explain:nth-child(6)').show();
		 		$('.char_explain:not(:nth-child(6))').hide();
		 		$('.char_map:nth-child(6)').show();
		 		$('.char_map:not(:nth-child(6))').hide();
		 		$('.char_explain span').css({"color": "#33E3CE", "text-shadow": ""});
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
			<div class="char_explain_box">
				<c:forEach var="ctg" items="${ctgList}">
				<div class="char_explain">
					<div class="char_explain_title">${ctg.categoryName}</div>
					<p><span>"${ctg.categoryName}"</span>형에게 잘 맞는 체험 장소는?</p>
				</div>
				</c:forEach>
				<div class="char_map_box">
					<c:forEach var="ctg" items="${ctgList}">
					<div class="char_map">
						<c:forEach items="${CtgMapList}" var="ctgMap" varStatus="status">
						<c:set var = "score" scope = "session" value = "${ctg.categoryNo}"/>
						<c:if test="${ctgMap.categoryNo eq score}">
						<div class="map_kind map_count" onclick="parent.location.href='<c:url value='/map_detail/${ctgMap.mapJobNo}'/>'">
							<div class="map_logo_box">
								<img src="<c:url value='${ctgMap.mapJobLogo}'/>">
							</div>
							<p>${ctgMap.mapJobName}</p>
						</div>
						</c:if>	
						</c:forEach>	
						<div class="map_kind" onclick="parent.location.href='<c:url value="/map_index"/>'">
							<div class="map_logo_box">
								<img src="<c:url value='images/interest_zoom-in.png' />">
							</div>
							<p>더 보러 가기</p>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			<div class="next_btn">
				<img src="<c:url value='images/direction.png' />">
				<p>나의 다짐 작성하기</p>
			</div>
		</section>
	</body>
</html>