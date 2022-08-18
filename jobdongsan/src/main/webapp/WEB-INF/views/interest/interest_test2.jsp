<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='css/interest_test2.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_test2.js' />"></script>
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
				<div class="title">
					직업의 중요성
				</div>
				<div class="contents">
					세 가지 측면에서 직업의 의미를<br>구체적으로 살펴볼까요?
				</div>
				<img src="<c:url value='images/chat_bubble.png' />" class="chat_bubble">
				<div class="contents_box">
					<p>직업의 <span>중요성</span><br>알아보기</p>
				</div>
				<img src="<c:url value='images/cooking.png' />" class="cooking">
				
				<!-- 생성되는 콘텐츠 -->
				<div class="three_point_thumbnail">
					<div class="three_point">
						<div class="three_point_title">
							첫째
						</div>
						<div class="three_point_summary">
							즐거움, 보람,<br>성취감
						</div>
						<div class="three_point_next">
							go <img src="<c:url value='images/right-arrow.png' />" class="right-arrow">
						</div>
					</div>
					<div class="three_point">
						<div class="three_point_title">
							둘째
						</div>
						<div class="three_point_summary">
							수입을 통한<br>의식주 해결
						</div>
						<div class="three_point_next">
							go <img src="<c:url value='images/right-arrow.png' />" class="right-arrow">
						</div>
					</div>
					<div class="three_point">
						<div class="three_point_title">
							셋째
						</div>
						<div class="three_point_summary">
							사회구성원으로서의<br>소속감
						</div>
						<div class="three_point_next">
							go <img src="<c:url value='images/right-arrow.png' />" class="right-arrow">
						</div>
					</div>
				</div>
				<div class="three_point_contents">
					<div class="back_arrow">
						<img src="<c:url value='images/interest_arrow.png' />">
					</div>
					<div class="three_point_contents_box">
						<div class="contents_title">
							첫째
						</div>
						<table class="contents_paragh">
							<tr><th>"즐거움, 보람, 성취감"</th></tr>
							<tr><td>첫째는 나를 기준으로 생각했을 때, 일(직업)은</td></tr>
							<tr><td>재미와 만족감, 그리고 성취감을 가져다준답니다.</td></tr>
							<tr><td></td></tr>
							<tr><td>직업을 통해 내가 이루어 놓은 일을 보고 있으면,</td></tr>
							<tr><td>내가 매우 자랑스럽고 뿌듯하게 느껴지고</td></tr>
							<tr><td>더 나은 나의 모습을 발견할 수 있기 때문이에요.</td></tr>
							<tr><td></td></tr>
							<tr><td></td></tr>
							<tr><td></td></tr>
							<tr><td></td></tr>
						</table>
					</div>
					<div class="next_arrow">
						<img src="<c:url value='images/interest_arrow.png' />">
					</div>
				</div>
				<div class="three_point_contents">
					<div class="back_arrow">
						<img src="<c:url value='images/interest_arrow.png' />">
					</div>
					<div class="three_point_contents_box">
						<div class="contents_title">
							둘째
						</div>
						<table class="contents_paragh">
							<tr><th>"수입을 통한 의식주 해결"</th></tr>
							<tr><td>둘째는 자신과 가족에게 필요한 의·식·주를 기준으로 생각해볼 때,</td></tr>
							<tr><td>기본적인 생활은 물론, 내가 좋아하는 취미와 여가활동 또한 가능하게 해준답니다.</td></tr>
							<tr><td></td></tr>
							<tr><td>일(직업)을 함으로써 돈(월급)을 벌 수 있고,</td></tr>
							<tr><td>'돈'은 나와 가족에게 필요한 것을 살 수 있도록 해주며,</td></tr>
							<tr><td>근검절약하여 성실하게 저축하면 많은 돈을 모을 수 있답니다.</td></tr>
							<tr><td></td></tr>
							<tr><td>저축한 돈은 나 자신의 발전을 위하여 무언가 배우고 싶을 때(교육),</td></tr>
							<tr><td>사고 싶은 물건이 있을 때, 혹은 남에게 도움을 줄 때 등,</td></tr>
							<tr><td>여러 가지 중요한 곳에 사용할 수 있기 때문이에요.</td></tr>
						</table>
					</div>
					<div class="next_arrow">
						<img src="<c:url value='images/interest_arrow.png' />">
					</div>
				</div>
				<div class="three_point_contents">
					<div class="back_arrow">
						<img src="<c:url value='images/interest_arrow.png' />">
					</div>
					<div class="three_point_contents_box">
						<div class="contents_title">
							셋째
						</div>
						<table class="contents_paragh">
							<tr><th>"사회 구성원으로서의 소속감"</th></tr>
							<tr><td>셋째는 사회 구성원으로서의 소속감과 일체감을 가져다주는 역할을 한답니다.</td></tr>
							<tr><td></td></tr>
							<tr><td>우리 주변을 둘러보면 다양한 직업이 있음을 알수 있어요.</td></tr>
							<tr><td></td></tr>
							<tr><td>학교에서 매일 보는 선생님(교사), 병원에 가면 만나는 의사와 간호사,</td></tr>
							<tr><td>그리고 도로에서 교통질서를 지키도록 이끌어 주는 경찰관 등,</td></tr>
							<tr><td>이러한 직업들은 사람과 사람을 연결해 주며 멋진 조화를 이루고 있어요.</td></tr>
							<tr><td></td></tr>
							<tr><td>마치 햄, 피망, 치즈, 양파같은 재료가 모여</td></tr>
							<tr><td>'피자' 라는 맛있는 음식이 나오는 것처럼 말이에요.</td></tr>
						</table>
					</div>
					<div class="next_arrow">
						<img src="<c:url value='images/interest_arrow.png' />">
					</div>
				</div>
			</div>
		</section>
	</body>
</html>