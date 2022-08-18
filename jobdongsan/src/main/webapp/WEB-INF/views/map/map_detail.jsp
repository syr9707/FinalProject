<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		
		<!-- 부트스트랩 -->
		<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>		
		
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/map_detail.css'/>"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- js -->
		<script src="<c:url value='/js/map_detail.js'/>"></script>
		
	</head>
	
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		
		<!-- section.jsp -->
		<section class="section">
		
				<div id="background">
				</div>
				
		
				<div class="section_wrap">
			
			
				<div id="map_detail_title">
				<h2>어린이 직업 체험 장소</h2>
				</div>	
				
				<div id="map_detail_sub_title"><h4>키자니아</h4></div>
				
				<div id="background_star">
				<img src="<c:url value='/images/map_background_star.png'/>">
				</div>
											
				<div id="map_info">
				
					<span id="map_bookmark">
					<img src="<c:url value='/images/bookmark.png'/>">
					</span>
				
					<div id="map_info_logo">직업 체험 장소 로고</div>
					
					<div id="map_info_detail">
					
					<ul>					
						<li>
						<div id="map_info_detail_line">
						<strong>체험 장소 이름</strong>
						<div>여기에 DB 데이터가 들어갑니다</div>
						</div>
						</li>
						
						<li>
						<div id="map_info_detail_line">
						<strong>체험 장소 주소</strong>
						<div>여기에 DB 데이터가 들어갑니다</div>
						</div>
						</li>
						
						<li>
						<div id="map_info_detail_line">
						<strong>문의처</strong>
						<div>여기에 DB 데이터가 들어갑니다</div>
						</div>
						</li>
						
						<li>
						<div id="map_info_detail_line">
						<strong>홈페이지 주소</strong>
						<div>여기에 DB 데이터가 들어갑니다</div>
						</div>
						</li>
					</ul>
					
					</div>
					
				</div>
				
				<div id="speech_bubble_box1">
				<div id="speech_bubble">여기에서는 어떤 체험을 할 수 있을까?</div>
				<span id="speech_bubble_char1">
				<img src="<c:url value='/images/map_bubble_duck.png'/>">
				</span>
				</div>
				
				<div id="map_experience_slide">
				
				<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="<c:url value='/images/sample1.png'/>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
				      <img src="<c:url value='/images/sample2.png'/>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
				       <img src="<c:url value='/images/sample3.png'/>" class="d-block w-100">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
				
				</div>
				
				
														
				<div id="speech_bubble_box2">
				<span id="speech_bubble_char2">
				<img src="<c:url value='/images/map_bubble_rabbit.png'/>">
				</span>
				<div id="speech_bubble">우와~ 어디에 있는 곳이지?</div>
				</div>
				
				<div id="map_api">여기에 맵 api가 들어갑니다</div>
				
				
				</div> <!-- wrap 끝 -->
			
		</section>
		
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>