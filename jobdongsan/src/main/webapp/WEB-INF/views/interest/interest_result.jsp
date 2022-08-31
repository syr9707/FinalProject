<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest_result.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_result.js' />"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				var score = "${maxScoreKeyNum}";
				if(score == '1'){
			 		$('.char_graph:nth-child(1) img').show();
			 		$('.char_name span').css("color", "#FF8E8E");
			 		$('.next_btn span').css("color", "#FF8E8E");
			 	}else if(score == '2'){
			 		$('.char_graph:nth-child(2) img').show();
			 		$('.char_name span').css("color", "#89F578");
			 		$('.next_btn span').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
			 	}else if(score == '3'){
			 		$('.char_graph:nth-child(3) img').show();
			 		$('.char_name span').css("color", "#FBE28A");
			 		$('.next_btn span').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
			 	}else if(score == '4'){
			 		$('.char_graph:nth-child(4) img').show();
			 		$('.char_name span').css("color", "#33A4E3");
			 		$('.next_btn span').css("color", "#33A4E3");
			 	}else if(score == '5'){
			 		$('.char_graph:nth-child(5) img').show();
			 		$('.char_name span').css("color", "#F072F2");
			 		$('.next_btn span').css("color", "#F072F2");
			 	}else if(score == '6'){
			 		$('.char_graph:nth-child(6) img').show();
			 		$('.char_name span').css("color", "#33E3CE");
			 		$('.next_btn span').css("color", "#33E3CE");
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
		<section>
			<div class="side_wrap">
				<ul>
					<li>
						<div class="test_side_menu">
							<img src="<c:url value='images/light_bulb.png' />" class="light_bulb">
						</div>
						<div class="side_menu_name">
							직업의 중요성
						</div>
					</li>
					<li>
						<div class="test_side_menu">
							<img src="<c:url value='images/dessert.png' />" class="dessert">
						</div>
						<div class="side_menu_name">
							자기 이해
						</div>
					</li>
					<li>
						<div class="test_side_menu">
							<img src="<c:url value='images/dessert2.png' />" class="dessert2">
						</div>
						<div class="side_menu_name">
							나의 다짐
						</div>
					</li>
				</ul>
			</div>
			
			<div class="contents_wrap">
				<img src="<c:url value='images/table.png' />" class="table">
				<c:forEach var="ctg" items="${ctgList}">
				<c:set var = "score" scope = "session" value = "${maxScoreKeyNum}"/>
				<c:if test="${ctg.categoryNo eq score }">
				<div class="result_contents">
					<div class="contents_text">
						<div class="char_title">
							나에게 가장 적합한 유형은
						</div>
						<div class="char_name">
							<p><span>${ctg.categoryName}</span>입니다.</p>
						</div>
						<div class="char_explain">
							${ctg.categoryInfo}
						</div>
					</div>
					<div class="contents_char">
						<img src="<c:url value='${ctg.categoryImg}' />">
					</div>
				</div>
				</c:if>
				</c:forEach>
				<div class="result_graph_box">
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
					<div class="next_btn">
						<img src="<c:url value='images/direction.png' />">
						<c:forEach var="ctg" items="${ctgList}">
						<c:set var = "score" scope = "session" value = "${maxScoreKeyNum}"/>
						<c:if test="${ctg.categoryNo eq score }">
							<p><span>"${ctg.categoryName}"</span>형에게 잘 맞는<br>대표 직업 보러가기</p>
						</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>