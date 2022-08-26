<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="<c:url value='/css/job_index.css' />"/>
		<script src="<c:url value='https://cdn.jsdelivr.net/jquery/latest/jquery.min.js' />"></script>
		<script src="<c:url value='/js/job_index.js' />"></script>
		
	</head>
	<body>
		<div id="jobtesttt">
			<c:choose>
				<c:when test="${empty jobList }">
					검색 결과가 없습니다.
				</c:when>				
				<c:otherwise>
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
				</c:otherwise>
			</c:choose>
		</div>
		
	</body>
</html>