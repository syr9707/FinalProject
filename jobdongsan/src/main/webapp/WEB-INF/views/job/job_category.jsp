<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/job_category.css' />"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- js -->
		<script src="<c:url value='/js/job_category.js' />"></script>
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
				<div class="job_ctg_head">
					<div class="job_ctg_title">
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${jobList }" var="job" >
						<c:if test="${not doneLoop}">
						<c:if test="${job.categoryNo eq '1' }">
							<b class="a">뚝딱이</b> 유형 직업
						</c:if>
						<c:if test="${job.categoryNo eq '2' }">
							<b class="b">탐험이</b> 유형 직업
						</c:if>
						<c:if test="${job.categoryNo eq '3' }">
							<b class="c">멋쟁이</b> 유형 직업
						</c:if>
						<c:if test="${job.categoryNo eq '4' }">
							<b class="d">친절이</b> 유형 직업
						</c:if>
						<c:if test="${job.categoryNo eq '5' }">
							<b class="e">씩씩이</b> 유형 직업
						</c:if>
						<c:if test="${job.categoryNo eq '6' }">
							<b class="f">성실이</b> 유형 직업
						</c:if>
						<c:set var="doneLoop" value="true"/>
						</c:if>
						</c:forEach>
					</div>
					<div class="job_ctg_img">
						<c:set var="doneLoop" value="false" />
						<c:forEach items="${jobList }" var="job" >
						<c:if test="${not doneLoop}">
						<c:if test="${job.categoryNo eq '1' }">
							<img src="<c:url value='${job.categoryImg }'/>">
						</c:if>
						<c:if test="${job.categoryNo eq '2' }">
							<img src="<c:url value='${job.categoryImg }'/>">
						</c:if>
						<c:if test="${job.categoryNo eq '3' }">
							<img src="<c:url value='${job.categoryImg }'/>">
						</c:if>
						<c:if test="${job.categoryNo eq '4' }">
							<img src="<c:url value='${job.categoryImg }'/>">
						</c:if>
						<c:if test="${job.categoryNo eq '5' }">
							<img src="<c:url value='${job.categoryImg }'/>">
						</c:if>
						<c:if test="${job.categoryNo eq '6' }">
							<img src="<c:url value='${job.categoryImg }'/>">
						</c:if>
						<c:set var="doneLoop" value="true"/>
						</c:if>
						</c:forEach>
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
				<div class="job_category_main">
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
				<div class="joblist_button">
					<!-- <input type="button" id="joblistBtn" value="목록보기"> -->
					<button id="joblistBtn" onclick="location.href='<c:url value='/job_index'/>'">목록보기</button >
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>