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
				<div class="result_contents">
					<div class="contents_text">
						<div class="char_title">
							나에게 가장 적합한 유형은
						</div>
						<div class="char_name">
							<p><span>뚝딱이</span>입니다.</p>
						</div>
						<div class="char_explain">
							손재주가 있거나 만들기를 좋아해요.<br>
							만들기에 필요한 도구나 기계를 잘 다뤄요.<br>
							그리고 활동적이고 몸을 움직이는 것을 좋아해요.<br>
							뚝딱이는 솔직하고 성실하면서도 수줍음이 많은 편이에요.<br>
						</div>
					</div>
					<div class="contents_char">
						<img src="<c:url value='images/mypage_detail_ginger.png' />">
					</div>
				</div>
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
						</div>
						<div class="char_graph">
							<div class="graph_name">멋쟁이</div>
							<div class="mje_graph"></div>
						</div>
						<div class="char_graph"> 
							<div class="graph_name">친절이</div>
							<div class="cje_graph"></div>
						</div>
						<div class="char_graph">
							<div class="graph_name">씩씩이</div>
							<div class="sse_graph"></div>
						</div>
						<div class="char_graph">
							<div class="graph_name">성실이</div>
							<div class="ssle_graph"></div>
						</div>
					</div>
					<div class="next_btn">
						<img src="<c:url value='images/direction.png' />">
						<p><span>"뚝딱이"</span>형에게 잘 맞는<br>대표 직업 보러가기</p>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>