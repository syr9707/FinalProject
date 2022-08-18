<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
							기자
						</div>
						<div class="job_title2">
							" 뉴스를 취재하고 기사를 써요. "
						</div>
					</div>
					<div class="job_good">
						<div class="job_star">★</div>
						<div class="job_star2">관심 직업</div>
					</div>
				</div>
				<div class="job_info">
					<div class="job_img">
						<img src="<c:url value='/images/job_img.png'/>">
					</div>
					<div class="job_info2">
						<div class="job_infotitle">
							" 어떤 일을 하나요? "
						</div>
						<div class="job_infodetail">
							<ul>
								<li> •  뉴스 및 기타 관련자료를 취재하고 이를 신문, 잡지, 전문서적에 싣는 일을 합니다.</li>
								<li> •  정확한 사실을 사람들에게 알리고 잘못된 사실을 지적하고 비판해서 많은 사람들의 목소리를 대신하기도 합니다.</li>
								<li> •  정확한 사실을 사람들에게 알리고 잘못된 사실을 지적하고 비판해서 많은 사람들의 목소리를 대신하기도 합니다.</li>
								<li> •  정확한 사실을 사람들에게 알리고 잘못된 사실을 지적하고 비판해서 많은 사람들의 목소리를 대신하기도 합니다.</li>
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
						<ul>
							<li> •  기자가 되려면 사회에서 일어나는 모든 현상에 관심을 가지고 깊이 있게 보는 안목이 필요합니다.</li>
							<li> •  학교나 지역에서 학생들이 만드는 신문이 있다면 참가하는 것이 좋습니다.</li>
							<li> •  취재는 어떻게 하는 것이고 글을 작성해서 편집하는 것까지 자연스럽게 과정을 익힐 수 있을 것입니다.</li>
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
								국어<br>
								역사<br>
								철학과 신학<br>
								사회와 인류<br>
								예술<br>
							</div>
						</div>
					</div>
					<div class="job_interests">
						<div class="job_intereststitle">
							" 어떤 <b>흥미</b> 유형인가요? "
						</div>
						<div class="interest_box">
							<div class="interest_img">
								<img src="<c:url value='/images/job_dance.png'/>">
							</div>
							<div class="interest_info">
								씩씩이형<br>
								탐험이형<br>
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
								지적 추구<br>
								타인에 대한 영향<br>
								자율<br>
								애국<br>
								개인지향<br>
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
					<button id="joblistBtn" onclick="location.href='<c:url value='/jobindex'/>'">목록보기</button >
				</div>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>





























