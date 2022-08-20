<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="<c:url value='/css/job_index.css' />"/>
		<!-- js -->
		<script src="<c:url value='/js/job_index.js' />"></script>
		</head>
	<body>
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
			<div class="job_background">
				<%-- <img src="<c:url value='/images/background.png'/>"> --%>
			</div>
			<div id="wrap">
				<div class="job_head">
					<div class="job_headname">
						다양한 직업 냠냠
					</div>
					<div class="job_doughnut">
						<img src="<c:url value='/images/job_doughnut1.png'/>">
					</div>
				</div>
				<div class="job_search">
					<div class="job_searchbox">
						<input type="text" class="job_searchtext" id="job_searchtext" name="job_searchtext" placeholder="                검색어를 입력해주세요.">
					</div>
					<div class="job_searchbtn">
						<div class="job_searchimg">
							<img src="<c:url value='/images/job_search.png'/>">
						</div>
					</div>
				</div>
				<div class="job_pink">
					<div class="job_pinktitle">
						<b>관심 있는</b> 직업을 클릭하면<br>
						그 직업에 대한 자세한 정보를 볼 수 있어요!
					</div>
					<div class="job_pinkdonut">
						<img src="<c:url value='/images/job_pink.png'/>">
					</div>
				</div>
				<div class="job_list">
		            <ul class="nav nav-tabs">
		              <li class="nav-item">
		                <a class="nav-link active" data-toggle="tab" href="#job1">전체</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job2">ㄱ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job3">ㄴ~ㄹ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job4">ㅁ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job5">ㅂ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job6">ㅅ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job7">ㅇ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job8">ㅈ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job9">ㅊ~ㅌ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job10">ㅍ~ㅎ</a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" data-toggle="tab" href="#job11">A~Z</a>
		              </li>
		            </ul>
		            <div class="tab-content">
		              <div class="tab-pane fade show active" id="job1">
		              	<div class="job_test">
		              		<div class="job_cont1">
			                	<div class="job_detail_img">
			                		<a href="<c:url value='/job_detail'/>">
			                		<img src="<c:url value='/images/job_img.png'/>">
			                		</a>
			                	</div>
			                	<div class="job_detail_title">
			                		기자
			                	</div>
			                	<div class="job_detail_info">
			                		뉴스를 취재하고 기사를 써요.
			                	</div>
			                </div>
			                <div class="job_cont1">
			                	<div class="job_detail_img">
			                		<img src="<c:url value='/images/job_img2.png'/>">
			                	</div>
			                	<div class="job_detail_title">
			                		드론조종사
			                	</div>
			                	<div class="job_detail_info">
			                		초경량 비행체인 드론을 조종해요.
			                	</div>
			                </div>
			                <div class="job_cont1">
			                	<div class="job_detail_img">
			                		<img src="<c:url value='/images/job_img3.png'/>">
			                	</div>
			                	<div class="job_detail_title">
			                		상품, 공간, 스토리텔러
			                	</div>
			                	<div class="job_detail_info">
			                		홍보를 위해 상품이나 서비스와 관련된 스토리를 만들어요.
			                	</div>
			                </div>
			                <div class="job_cont1">
			                	<div class="job_detail_img">
			                		<img src="<c:url value='/images/job_img4.png'/>">
			                	</div>
			                	<div class="job_detail_title">
			                		인공지능전문가
			                	</div>
			                	<div class="job_detail_info">
			                		스스로 판단하는 인공지능 프로그램을 만들어요.
			                	</div>
			                </div>
			                <div class="job_cont1">
			                	<div class="job_detail_img">
			                		<img src="<c:url value='/images/job_img3.png'/>">
			                	</div>
			                	<div class="job_detail_title">
			                		상품, 공간, 스토리텔러
			                	</div>
			                	<div class="job_detail_info">
			                		홍보를 위해 상품이나 서비스와 관련된 스토리를 만들어요.
			                	</div>
			                </div>
			                <div class="job_cont1">
			                	<div class="job_detail_img">
			                		<img src="<c:url value='/images/job_img4.png'/>">
			                	</div>
			                	<div class="job_detail_title">
			                		인공지능전문가
			                	</div>
			                	<div class="job_detail_info">
			                		스스로 판단하는 인공지능 프로그램을 만들어요.
			                	</div>
			                </div>
			                
			                <%
			                	int count = 6;
			                	int num = 0;
			                	if(count % 4 != 0) {
			                		num = 4 - (count % 4);
			                	}
			                	for(int i = 0; i < num; i++) {
			                %>
			                
			                <div class="job_cont2"></div>
			                
			                <%
			                	}
			                %>
			                
		              	</div>
		              </div>
		              <div class="tab-pane fade" id="job2">
		                <div class="job_test">
		                	<div class="job_cont1">
			                	job1
			                </div>
			                <div class="job_cont1">
			                	job2
			                </div>
			                <div class="job_cont1">
			                	job3
			                </div>
			                <div class="job_cont1">
			                	job4
			                </div>
			                <div class="job_cont1">
			                	job5
			                </div>
			                <div class="job_cont1">
			                	job6
			                </div>
			                <div class="job_cont1">
			                	job7
			                </div>
			                <div class="job_cont1">
			                	job8
			                </div>
			                
			                <%
			                	int count2 = 8;
			                	int num2 = 0;
			                	if(count2 % 4 != 0) {
			                		num2 = 4 - (count2 % 4);
			                	}
			                	for(int i = 0; i < num2; i++) {
			                %>
			                
			                <div class="job_cont2"></div>
			                
			                <%
			                	}
			                %>
			                
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job3">
		                <div class="job_test">
		                	<div class="job_cont1">
			                	job1
			                </div>
			                <div class="job_cont1">
			                	job2
			                </div>
			                
			                <%
			                	int count3 = 2;
			                	int num3 = 0;
			                	if(count3 % 4 != 0) {
			                		num3 = 4 - (count3 % 4);
			                	}
			                	for(int i = 0; i < num3; i++) {
			                %>
			                
			                <div class="job_cont2"></div>
			                
			                <%
			                	}
			                %>
			                
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job4">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job5">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job6">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job7">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job8">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job9">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job10">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job11">
		                <div class="job_test">
		                	
		                </div>
		              </div>
		            </div>
					
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</body>
</html>










































