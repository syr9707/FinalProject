<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
		<!-- head.jsp -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- css -->
		<link rel="stylesheet" href="<c:url value='/css/mypage_update.css' />"/>
		<!-- js -->
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="<c:url value='/js/mypage_update.js' />"></script>
	</head>
	<body> 
		<!-- top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<!-- section.jsp -->
		<section class="section">
			<div class="section_wrap">
				<form id="mypage_update_form" method="post" action="<c:url value='/update_memberInfo'/>" enctype="multipart/form-data">
                    <h3 class="semibold txt_30">기본정보수정</h3>
                    <div class="update_profile_img">
                    	<div class="profile_img_box">
                    		<img class="profile_deco" src="<c:url value='/images/mypage_profile_deco.png'/>">
                    		<label id="profile_preview" for="img_file_upload">
	                    		<img class="profile_img_add" src="<c:url value='/images/mypage_circle.png'/>">
	                    		<img class="profile_img" src="<c:url value='/upload/${myProfileImg}'/>">
                    		</label>
                    		<input type="file" id="img_file_upload" name="img_file_upload" accept="image/png, image/jpeg">
                    	</div>
                    </div>
					<div class="input_id">
                        <p>아이디</p>
                        <input type="text" name="id" class="id bg_gray" value="${mem.memId }" readonly>
                    </div>
                    <div class="error red" id="id_error">5자~20자의 영문 소문자, 숫자와 특수기호(_) , (-)만 사용 가능합니다.</div>
                    <div class="input_pw">
                        <p>비밀번호</p>
                        <input type="password" name="pw" class="pw">
                    </div>
                    <div class="error red" id="pw_error">8자~16자의 영문 대 소문자, 숫자, 특수문자를 조합해서 사용해주세요.</div>
                    <div class="input_pw_chk">
                        <p>비밀번호 확인</p>
                        <input type="password" name="pw_chk" class="pw_chk">
                    </div>
                    <div class="error red" id="pw_chk_error">비밀번호가 일치하지 않습니다.</div>
                    <div class="input_name">
                        <p>이름</p>
                        <input type="text" name="name" class="name" value="${mem.memName }">
                    </div>
                    <div class="error red" id="name_error">이름을 입력해주세요.</div>
                    <div class="input_birth">
                        <p>자녀나이</p>
                        <div class="birth_input">
                            <input type="text" name="birth_year" class="birth_year" maxlength="4" placeholder="년(4자)" value="${fn:substring(mem.memChildBirth, 0, 4) }">
                            <select name="birth_month" class="birth_month">
                                <option value="">월</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <select name="birth_date" class="birth_date">
                                <option value="">일</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>
                        </div>
                    </div>
                    <div class="error red" id="birth_error">태어난 년도 4자리를 정확하게 입력해주세요.</div>
                    <div class="input_email">
                        <p>이메일</p>
                        <div class="email_input">
                            <input type="text" name="email1" class="email1" value="${fn:split(mem.memEmail, '@')[0]}">@<input type="text" name="email2" class="email2" placeholder="직접 입력" value="${fn:split(mem.memEmail, '@')[1]}">
                            <select name="email3" class="email3">
                                <option value="">직접입력</option>
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="hanmail.net">hanmail.net</option>
                                <option value="nate.com">nate.com</option>
                            </select>
                        </div>
                        <div class="error red" id="email_error">이메일 주소를 다시 확인해주세요.</div>
                        <input type="button" name="email_auth" class="email_auth semibold" value="인증하기">
                    </div>
                    <div class="input_phone">
                        <p>전화번호</p>
                        <input type="text" maxlength="11" name="phone" class="phone" placeholder="ex)01012345678" value="${mem.memHP }">
                    </div>
                    <div class="error red" id="phone_error">전화번호를 다시 확인해주세요.</div>
                    <div class="input_address">
                        <p>주소</p>
                        <div><input type="text" name="zipcode" id="zipcode" class="zipcode bg_gray" readonly value="${mem.memZipcode }"> <input type="button" name="find_zipcode" class="find_zipcode bg_y semibold" value="우편번호찾기"></div>
                        <div><input type="text" name="address1" id="address1" class="address1 bg_gray" readonly value="${mem.memAddress1 }"></div>
                        <div><input type="text" name="address2" id="address2" class="address2" placeholder="상세주소입력" value="${mem.memAddress2 }"></div>
                    </div>
                    <div class="error red" id="address_error">주소를 입력해주세요.</div>
                    <div class="btn_update">
                        <input type="button" name="update" class="update semibold txt_20 bg_y" value="수정">
                        <input type="button" name="cancle" class="cancle semibold txt_20" value="취소">
                    </div>
                    <input type="hidden" name="chk" id="chk" value="3">
                </form>
                <form id="mypage_delete_form" method="post" action="<c:url value='/delete_check'/>">
                    <div class="btn_delete"><input type="button" name="delete" class="delete semibold txt_20" value="회원 탈퇴"></div>
                    <input type="hidden" name="chk" id="chk2" value="2">
                </form>
			</div>
		</section>
		<!-- bottom.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.birth_month').val("${fn:substring(mem.memChildBirth, 5, 7)}").prop("selected",true);
			$('.birth_date').val("${fn:substring(mem.memChildBirth, 8, 10)}").prop("selected",true);
		});
	</script>
</html>