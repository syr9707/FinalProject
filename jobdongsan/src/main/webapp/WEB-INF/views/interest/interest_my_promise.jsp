<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/interest_my_promise.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/interest_my_promise.js' />"></script>
	</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section class="section">
			 <div class="image_box">
			    <div class="back_img1"></div>
		    </div>
		    
		    
	        <div class="section_wrap">
	            <div class="interest_title">
	                <p>어린이 진로 흥미 탐색</p>
	            </div>
	            <div class="interest_text">
	                <p>꿈을 위해 나는 어떤 노력을 해야 할까요?<br><span>나의 다짐</span>을 작성하고 부모님, 친구들과 함께 이야기해요.</p>
	            </div>
	            <img src="images/interest_man.png" class="interest_man">
	            <!-- form 태그 -->
	            <form id="my_promise_submit" method="post" action="<c:url value='/my_promise_text'/>">
	            <div class="view_box">
	                <div class="inner_view_box">
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
						<!----------------- 컨텐츠 내용 ------------------->
						<div class="contents_wrap">
							<div class="mem_info">
								<input type="text" name="school" size="19" placeholder="초등학교">
								<input type="text" name="grade" size="8" placeholder="학년">
								<input type="text" name="class" size="8" placeholder="반">
								<input type="text" name="name" size="16" placeholder="이름">
							</div>
							<div class="contents_title">
								자기이해
							</div>
							<div class="friends_think wrap_box">
								<div class="list_title">
									친구의 생각
								</div>
								<ul class="list_sentence">
									<li>
										나의 친구들은 나를 
										<input type="text" name="friends_think" size="14" placeholder="예: 멋쟁이"> 
										라고 부른다.
									</li>
									<li>
										나의 친구들은 나에게 
										<input type="text" name="friends_think2" size="14" placeholder="예: 정리정돈을"> 
										잘한다고 한다.
									</li>
								</ul>
							</div>
							<div class="my_think wrap_box">
								<div class="list_title">
									나의 생각
								</div>
								<ul class="list_sentence">
									<li>
										나는
										<input type="text" name="my_think" size="45" placeholder="예: 수학과 과학을 잘하고, 발표를"> 
										잘한다.
									</li>
									<li>
										나는
										<input type="text" name="my_think2" size="45" placeholder="예: 친구들과 함께 어울리고 이야기 하는 것을"> 
										잘한다.
									</li>
								</ul>
							</div>
							<img src="<c:url value='images/interest_cookie.png' />" class="interest_cookie">
						</div>
	                </div>
	                <div class="inner_view_box">
	                	<div class="contents_wrap2">
		                	<div class="my_future wrap_box">
		                		<div class="list_title">
									나의 미래
								</div>
								<ul class="list_sentence">
									<li>
										나의 꿈은
										<input type="text" name="my_future" size="35" placeholder="예: 행복하게 사는 것"> 
										이다.
									</li>
									<li>
										내가 원하는 직업은
										<input type="text" name="my_future2" size="20" placeholder="예: 의사"> 
										이다.
									</li>
								</ul>
		                	</div>
		                	<div class="my_future_plan wrap_box">
		                		<div class="list_title">
									나의 미래를 위한 약속
								</div>
								<ul class="list_sentence">
									<li>
										나는 집에서
										<input type="text" name="my_plan" size="40" placeholder="예: 과학책을 틈틈이 보겠다고"> 
										약속합니다.
									</li>
									<li>
										나는 학교에서
										<input type="text" name="my_plan2" size="40" placeholder="예: 어려운 일을 솔선수범 하겠다고"> 
										약속합니다.
									</li>
								</ul>
		                	</div>
		                	<div class="my_promise wrap_box">
		                		<div class="list_title">
									나의 다짐
								</div>
								<ul class="list_sentence">
									<li>
										나는
										<input type="text" name="my_promise" size="55" placeholder="예: 따듯한 마을을 가진 의사선생님이 되겠다고"> 
										다짐합니다.
									</li>
								</ul>
		                	</div>
	                	</div>
	                	<img src="<c:url value='images/interest_cupcake.png' />" class="interest_cupcake">
	                	<img src="<c:url value='images/interest_donut.png' />" class="interest_donut">
	                	<img src="<c:url value='images/interest_gingerbread.png' />" class="interest_gingerbread">
	                	<img src="<c:url value='images/interest_gingerbread-man.png' />" class="interest_gingerbread-man">
	                	<img src="<c:url value='images/interest_happy.png' />" class="interest_happy">
	                </div>
	            </div>
	            <input type="submit" class="finish_btn" value="탐색 완료하고 저장하기">  
                </form>
	        </div>
	    </section>
	    <!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>