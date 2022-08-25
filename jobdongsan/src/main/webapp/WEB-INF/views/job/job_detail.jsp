<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/job_detail.css' />"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- js -->
		<script src="<c:url value='/js/job_detail.js' />"></script>
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
				<div class="job_mint">
					<div class="job_mintdoughnut">
						<img src="<c:url value='/images/job_doughnut2.png'/>">
					</div>
					<div class="job_glass">
						<img src="<c:url value='/images/job_glass.png'/>">
					</div>
					<div class="job_title">
						<div class="job_name">
							${job. jobName}
						</div>
						<div class="job_title2">
							" ${job. jobInfo} "
						</div>
					</div>
					<div class="job_good">
						<div class="job_star">★</div>
						<div class="job_star2">관심 직업</div>
					</div>
				</div>
				<div class="job_info">
					<div class="job_img">
						<img src="<c:url value='${job.jobImg}'/>">
					</div>
					<div class="job_info2">
						<div class="job_infotitle">
							" 어떤 일을 하나요? "
						</div>
						<div class="job_infodetail">
							<c:set var="jobWork" value="${job.jobWork }" />
							<c:set var="jobWorkList" value="${fn:split(jobWork,'|') }" />
							<ul>
								<c:forEach var="joblisttest" items="${jobWorkList }">
									<li> •  ${joblisttest }</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="job_how">
					<div class="job_how2">
						<div class="job_howimg">
							<img src="<c:url value='/images/job_how.png'/>">
						</div>
						<div class="job_howtitle">
							" 어떻게 하면 될 수 있나요? "
						</div>
					</div>
					<div class="job_howdetail">
						<c:set var="jobHow" value="${job.jobHow }" />
						<c:set var="jobHowList" value="${fn:split(jobHow,'|') }" />
						<ul>
							<c:forEach var="joblisttest2" items="${jobHowList }">
								<li> •  ${joblisttest2 }</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="job_three">
					<div class="job_needs">
						<div class="job_needstitle">
							" 어떤 <b>지식</b>이 필요할까요? "
						</div>
						<div class="need_box">
							<div class="need_img">
								<img src="<c:url value='/images/job_knowledge.png'/>">
							</div>
							<div class="need_info">
								<c:set var="jobNeeds" value="${job.jobNeeds }" />
								<c:set var="jobNeedsList" value="${fn:split(jobNeeds,'|') }" />
								<c:forEach var="joblisttest3" items="${jobNeedsList }">
									${joblisttest3 }<br>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="job_interests">
						<div class="job_intereststitle">
							" 어떤 <b>흥미</b> 유형인가요? "
						</div>
						<div class="interest_box">
							<div class="interest_img">
								<img src="<c:url value='${job.categoryImg }'/>">
							</div>
							<div class="interest_info">
								${job.categoryName }형<br>
							</div>
						</div>
					</div>
					<div class="job_values">
						<div class="job_valuestitle">
							" 어떤 <b>가치관</b>을 가질까요? "
						</div>
						<div class="value_box">
							<div class="value_img">
								<img src="<c:url value='/images/job_brain.png'/>">
							</div>
							<div class="value_info">
								<c:set var="jobValues" value="${job.jobValues }" />
								<c:set var="jobValuesList" value="${fn:split(jobValues,'|') }" />
								<c:forEach var="joblisttest4" items="${jobValuesList }">
									${joblisttest4 }<br>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="job_chatbot">
					<div class="job_chatbot_title">
						<div class="job_chat_img">
							<img src="<c:url value='/images/job_chat.png'/>">
						</div>
						<div class="job_chat_title">
							<div class="job_chat_head">
								질문 냠냠
							</div>
							<div class="job_chat_info">
								이 직업에 대해 궁금한 걸 <b>질문</b>해 보아요
							</div>
						</div>
					</div>
					<div class="job_chat_box">
						<div class="job_chat_donut">
							<img src="<c:url value='/images/job_donut.png'/>">
						</div>
						<div class="job_chat_detail">
						</div>
					</div>
					<div class="job_chat_btn">
						<div class="job_play_title">
							질문 시작
						</div>
						<div class="job_play">
							<img src="<c:url value='/images/job_play.png'/>">
						</div>
						<div class="job_stop_title">
							질문 끝
						</div>
						<div class="job_stop">
							<img src="<c:url value='/images/job_stop.png'/>">
						</div>
					</div>
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





























