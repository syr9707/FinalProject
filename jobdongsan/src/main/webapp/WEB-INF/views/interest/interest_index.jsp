<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest.css' />"/>
		<!-- js -->
		<%-- <script src="<c:url value='/js/interest.js' />"></script> --%>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			 <div class="image_box">
			    <div class="back_img1"></div>
	           	<div class="back_img2"></div>
		    </div>
	        <div class="section_wrap">
	            <div class="interest_title">
	                <p>어린이 진로 흥미 탐색</p>
	            </div>
	            <div class="interest_text">
	                <p><span>어린이 진로흥미탐색</span>에서는 내가 어떤 것을 좋아하고 잘하는지<br>
	                    살펴보고 나와 어울리는 직업에는 무엇이 있는지 알아볼 수 있어요.</p>
	            </div>
	            <img src="images/interest_man.png" class="interest_man">
	            <div class="view_box">
	                <iframe class="inner_view_box" scrolling="no" src="<c:url value='/interest_test' />"></iframe>
	            </div>
	        </div>
	    </section>
	    <!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>