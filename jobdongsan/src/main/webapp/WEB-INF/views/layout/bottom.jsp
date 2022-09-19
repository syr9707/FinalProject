<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- 탑 버튼 -->
	<div class="btns">
		<img class="btn_top_up" src="<c:url value='/images/arrow-up.png' />">
		<p>위로</p>
		<img class="btn_top" src="<c:url value='/images/btn_top.png' />">
		<!-- 챗봇 -->
		<img class="main_chatbot" src="<c:url value='/images/chatbot.png' />">
		<div class="main_chat_box">	
			<div id="main_chat_box_title">잡동산 챗봇</div>		
			<div class="main_chat_detail">	
				<div class="main_chatbot_box">
				</div>	
				<div class="main_user_box">
					<form id="chatForm" name="chatForm">
						<input type="text" id="main_message" name="message" placeholder="궁금한게 있으면 질문해 주세요.">
						<input type="submit" id="main_chat_submit" value="보내기">
					</form>
				</div>		
			</div>
		</div>		
	</div>
	<!-- footer -->
	 <footer>
	 	<div class="bottom_box">
			<div class="bottom_wrap">
				<div class="bottom_menu">
					<ul>
						<li><a href="#">회사소개</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">개인정보 취급방침</a></li>
						<li><a href="#">이용문의 및 오류 제보</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>
				<div class="bottom_info_box">
					<div class="bottom_info">
						<p>(주)키득키득 | 서울특별시 강남구 언주로 508 14층(역삼동, 서울상록빌딩)</p>
						<p>대표이사 채동혁 | 개인정보관리 최고책임자 박상완 </p>
						<p>COPYRIGHTS ⓒ KRIVET ALL RIGHTS RESERVED</p>
					</div>
					<div class="bottom_logo_box">
						<div class="bottom_logo">
							<img src="<c:url value='/images/logo_mul.png' />">
							<img src="<c:url value='/images/logo_krivet.png' />">
						</div>
						<img src="<c:url value='/images/logo_grayjob.png' />">
					</div>
				</div>
			</div>
        </div>
    </footer>