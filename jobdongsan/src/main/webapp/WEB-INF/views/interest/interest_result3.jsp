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
					<div class="char_map">
						<c:forEach items="${CtgMapList}" var="ctgMap" varStatus="status" end="3">
							<div class="map_kind" onclick="parent.location.href='<c:url value='/map_detail/${ctgMap.mapJobNo}'/>'">
								<div class="map_logo_box">
									<img src="<c:url value='${ctgMap.mapJobLogo}'/>">
								</div>
								<p>${ctgMap.mapJobName}</p>
							</div>
						</c:forEach>	
						<div class="map_kind">
							<div class="map_logo_box">
								<img src="<c:url value='images/interest_zoom-in.png' />">
							</div>
							<p>더 보러 가기</p>
						</div>
					</div>
				</div>
			</div>
			<div class="next_btn">
				<img src="<c:url value='images/direction.png' />">
				<p>나의 다짐 작성하기</p>
			</div>
		</section>
	</body>
</html>