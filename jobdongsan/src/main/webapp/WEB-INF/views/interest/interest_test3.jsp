<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest_test3.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_test3.js' />"></script>
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
				<img src="<c:url value='images/cooking.png' />" class="cooking">
				<img src="<c:url value='images/kitchen_table.png' />" class="kitchen_table">
				<div class="chat">
					<img src="<c:url value='images/chat.png' />">
					<p class="chat_title">자기이해</p>
					<p class="chat_contents"></p>
				</div>
				<div class="back_arrow">
					<img src="<c:url value='images/interest_arrow.png' />" class="interest_arrow">
				</div>
				<div class="plate" id="yes">
					<img src="<c:url value='images/plate.png' />" class="plate_img">
					<img src="<c:url value='images/interest_flour.png' />" class="food">
					<p>예</p>
				</div>
				<div class="plate" id="soso">
					<img src="<c:url value='images/plate.png' />" class="plate_img">
					<img src="<c:url value='images/interest_flour.png' />" class="food">
					<p>보통</p>
				</div>
				<div class="plate" id="no">
					<img src="<c:url value='images/plate.png' />" class="plate_img">
					<img src="<c:url value='images/interest_flour.png' />" class="food">
					<p>아니오</p>
				</div>
			</div>
		</section>
	</body>
</html>