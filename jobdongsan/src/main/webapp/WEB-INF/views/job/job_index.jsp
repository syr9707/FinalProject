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
					<form id="jobSearchForm">
					<div class="job_searchbox">
						<input type="text" class="job_searchtext" id="job_searchtext" name="keyword" placeholder="        검색어를 입력해주세요.">
					</div>
					<div class="job_searchbtn">
						<div class="job_searchimg">
							<img src="<c:url value='/images/job_search.png'/>">
						</div>
					</div>
					</form>
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
				<div id="jobSearchResultBox">
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
		              		<%
		              			int count = 0;
		              		%>
		              		<c:forEach items="${jobList }" var="job">
		              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
		              				<div class="job_detail_img">
					                	<img src="<c:url value='${job.jobImg}'/>">
		              				</div>
		              				<div class="job_detail_title">
				                		${job.jobName}
				                	</div>
				                	<div class="job_detail_info">
				                		${job.jobInfo}
				                	</div>
		              			</div>
		              			
		              			<%
		              				count++;
		              			%>
		              		</c:forEach>
			                <%
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
		                <%
		              		int count2 = 0;
		              	%>
		              	<c:forEach items="${jobList }" var="job">
		              		<c:if test="${job.jobCtg eq '1' }">
		              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
		              				<div class="job_detail_img">
					                	<img src="<c:url value='${job.jobImg}'/>">
		              				</div>
			              			<div class="job_detail_title">
					               		${job.jobName}
					               	</div>
					               	<div class="job_detail_info">
					               		${job.jobInfo}
					               	</div>
		              			</div>
		              			<%
		              				count2++;
		              			%>
		              		</c:if>
		              		</c:forEach>
			                <%
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
		                <%
		              		int count3 = 0;
		              	%>
		              	<c:forEach items="${jobList }" var="job">
		              		<c:if test="${job.jobCtg eq '2' }">
		              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
		              				<div class="job_detail_img">
					                	<img src="<c:url value='${job.jobImg}'/>">
		              				</div>
			              			<div class="job_detail_title">
					               		${job.jobName}
					               	</div>
					               	<div class="job_detail_info">
					               		${job.jobInfo}
					               	</div>
		              			</div>
		              			<%
			              			count3++;
			              		%>
		              		</c:if>
		              		</c:forEach>
			                <%
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
		                	<%
			              		int count4 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '3' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count4++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num4 = 0;
				                	if(count4 % 4 != 0) {
				                		num4 = 4 - (count4 % 4);
				                	}
				                	for(int i = 0; i < num4; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job5">
		                <div class="job_test">
		                	<%
			              		int count5 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '4' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count5++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num5 = 0;
				                	if(count5 % 4 != 0) {
				                		num5 = 4 - (count5 % 4);
				                	}
				                	for(int i = 0; i < num5; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job6">
		                <div class="job_test">
		                	<%
			              		int count6 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '5' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count6++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num6 = 0;
				                	if(count6 % 4 != 0) {
				                		num6 = 4 - (count6 % 4);
				                	}
				                	for(int i = 0; i < num6; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job7">
		                <div class="job_test">
		                	<%
			              		int count7 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '6' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count7++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num7 = 0;
				                	if(count7 % 4 != 0) {
				                		num7 = 4 - (count7 % 4);
				                	}
				                	for(int i = 0; i < num7; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job8">
		                <div class="job_test">
		                	<%
			              		int count8 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '7' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count8++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num8 = 0;
				                	if(count8 % 4 != 0) {
				                		num8 = 4 - (count8 % 4);
				                	}
				                	for(int i = 0; i < num8; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job9">
		                <div class="job_test">
		                	<%
			              		int count9 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '8' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count9++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num9 = 0;
				                	if(count9 % 4 != 0) {
				                		num9 = 4 - (count9 % 4);
				                	}
				                	for(int i = 0; i < num9; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job10">
		                <div class="job_test">
		                	<%
			              		int count10 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '9' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count10++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num10 = 0;
				                	if(count10 % 4 != 0) {
				                		num10 = 4 - (count10 % 4);
				                	}
				                	for(int i = 0; i < num10; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
		                </div>
		              </div>
		              <div class="tab-pane fade" id="job11">
		                <div class="job_test">
		                	<%
			              		int count11 = 0;
			              	%>
			              	<c:forEach items="${jobList }" var="job">
			              		<c:if test="${job.jobCtg eq '10' }">
			              			<div class="job_cont1" onclick="location.href='<c:url value='/job_detail/${job.jobNo }'/>'">
			              				<div class="job_detail_img">
						                	<img src="<c:url value='${job.jobImg}'/>">
			              				</div>
				              			<div class="job_detail_title">
						               		${job.jobName}
						               	</div>
						               	<div class="job_detail_info">
						               		${job.jobInfo}
						               	</div>
			              			</div>
			              			<%
				              			count11++;
				              		%>
			              		</c:if>
			              		</c:forEach>
				                <%
				                	int num11 = 0;
				                	if(count11 % 4 != 0) {
				                		num11 = 4 - (count11 % 4);
				                	}
				                	for(int i = 0; i < num11; i++) {
				                %>
				                <div class="job_cont2"></div>
				                <%
				                	}
				                %>
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










































