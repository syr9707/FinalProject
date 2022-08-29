<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!-- head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />

<!-- css -->
<link rel="stylesheet" href="<c:url value='/css/map_detail.css'/>" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<!-- js -->
<script src="<c:url value='/js/map_detail.js'/>"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

</head>

<body>
	<!-- top.jsp -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<!-- section.jsp -->
	<section class="section">

		<div id="background"></div>


		<div class="section_wrap">


			<div id="map_detail_title">
				<h2>어린이 직업 체험 장소</h2>
			</div>

			<div id="map_detail_sub_title">
				<h4>${map. mapJobName}</h4>
			</div>

			<div id="background_star">
				<img src="<c:url value='/images/map_background_star.png'/>">
			</div>

			<div id="map_info">

				<span id="map_bookmark" class="map_bookmark"> <img
					src="<c:url value='/images/bookmark.png'/>">
				</span>

				<div id="map_info_logo">
					<img src="<c:url value='${map. mapJobLogo}'/>">
				</div>

				<div id="map_info_detail">

					<ul>
						<li>
							<div id="map_info_detail_line">
								<strong>체험 장소 이름</strong>
								<div>${map. mapJobName}</div>
							</div>
						</li>

						<li>
							<div id="map_info_detail_line">
								<strong>체험 장소 주소</strong>
								<div>${map. mapJobAdd}</div>
							</div>
						</li>

						<li>
							<div id="map_info_detail_line">
								<strong>문의처</strong>
								<div>${map. mapJobPH}</div>
							</div>
						</li>

						<li>
							<div id="map_info_detail_line">
								<strong>홈페이지 주소</strong>
								<div>
									<a href="<c:url value='${map. mapJobLink}'/>">${map. mapJobLink}</a>
								</div>
							</div>
						</li>
					</ul>

				</div>

			</div>

			<%-- <div id="background_donut">
				<img src="<c:url value='/images/map_american_food.png'/>">
				</div> --%>


			<div id="map_category">

				<div id="map_category_img">
					<img src="<c:url value='${map.categoryImg }'/>">
				</div>

				<div>
					<b>이 체험 장소는 '${map.categoryName }' 유형에게 알맞는 장소예요!</b>
				</div>

			</div>


			<div id="speech_bubble_box1">
				<div id="speech_bubble1">여기에서는 어떤 체험을 할 수 있을까?</div>
				<div id="speech_bubble_char1">
					<img src="<c:url value='/images/map_bubble_duck.png'/>">
				</div>
			</div>

			<div id="map_experience">

				<img src="<c:url value='${map.mapJobImg1 }'/>"> <img
					src="<c:url value='${map.mapJobImg2 }'/>"> <img
					src="<c:url value='${map.mapJobImg3 }'/>">

			</div>



			<div id="speech_bubble_box2">
				<div id="speech_bubble_char2">
					<img src="<c:url value='/images/map_bubble_rabbit.png'/>">
				</div>
				<div id="speech_bubble2">우와~ 어디에 있는 곳이지?</div>
			</div>

			<div id="map_api">
				<script type="text/javascript"
					src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=hao62ejqqn"></script>
				<div id="map" style="width: 100%; height: 500px;"></div>

				<script>
						var HOME_PATH = window.HOME_PATH || '.';
						
						var map = new naver.maps.Map('map',{
						  center: new naver.maps.LatLng(${map.mapY }, ${map.mapX }),
						  zoom: 15
						});

						var marker = new naver.maps.Marker({
						  position: new naver.maps.LatLng(${map.mapY }, ${map.mapX }),
						  map: map
						});
						
						var contentString = [
					        '<div class="iw_inner">',
					        '   <h3>${map. mapJobName}</h3>',
					        '   <p>${map. mapJobAdd}<br />', 
					        '   </p>',
					        '</div>'
					    ].join('');

						var infowindow = new naver.maps.InfoWindow({
						    content: contentString
						});
	
						naver.maps.Event.addListener(marker, "click", function(e) {
						    if (infowindow.getMap()) {
						        infowindow.close();
						    } else {
						        infowindow.open(map, marker);
						    }
						});
	
						infowindow.open(map, marker);
					</script>

			</div>


			<div class="maplist_button">
				<button id="maplistBtn"
					onclick="location.href='<c:url value='/map_index'/>'">목록보기</button>
			</div>


		</div>
		<!-- wrap 끝 -->

	</section>

	<!-- bottom.jsp -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>


<script>
	$(document).ready(function(){
		
		$('.map_bookmark').click(function() {
			
			if(${empty sessionScope.sid}){
	    	   
	    		if(confirm("로그인이 필요한 서비스 입니다.\n로그인 하시겠습니까?")) {
		   			location.href="<c:url value='/login'/>";
		   		}
		   	} else {
				
		   		if(confirm("나의 관심 체험 장소로 선택하시겠습니까?")) {
		   			
		   			$.ajax({
		   				type:"post",
		   				url:"/insert_map",
		   				data:{"mapJobNo":${mapJobNo}},
		   				success:function(result) {
		   					
		   					if(result == "0") {
		   						alert("관심 체험 장소에 저장되었습니다.\n나의 잡동산 페이지에서 확인하실 수 있습니다.");
		   						
		   					} else if(result == "1") {
		   						
		   						if(confirm("나의 관심 체험 장소에 존재합니다. 삭제하시겠습니까?")) {
		   							
		   							$.ajax({
			   							type:"post",
			   			   				url:"/delete_map",
			   			   				data:{"mapJobNo":${mapJobNo}},
			   			   				success:function(result) {
			   			   					alert("나의 관심 체험 장소에서 삭제되었습니다.");
			   			   				}
			   						});
		   						}
		   					}
		   					
		   				},
		   				error:function() {
		   					alert("전송 실패");
		   				}
		   			});
		   		}
		   	}
		});
	});
	</script>


</html>