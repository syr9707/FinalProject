$(document).ready(function(){
	
    if($('#chk').val() == "1") {			// 회원 가입 시
    	$('.btn_login').click(function(){
        	location.href="/login";
    	});
    } else if($('#chk').val() == "2") {		// 회원 탈퇴 시
    	$('#title').text("회원탈퇴");
    	$('#result_signup').html("<b>회원탈퇴</b>가 완료되었습니다.");
    	$('.btn_login').val("메인페이지로 이동");
    	$('.btn_login').click(function(){
        	location.href="/";
    	});
    } else if($('#chk').val() == "3") {		// 회원 정보 수정 시
    	$('#title').text("기본정보수정");
    	$('#result_signup').html("<b>기본정보수정</b>이 완료되었습니다.");
    	$('.btn_login').val("메인페이지로 이동");
    	$('.btn_login').click(function(){
        	location.href="/";
    	});
    } else {
    	$('.btn_login').val("메인페이지로 이동");
    	$('.btn_login').click(function(){
        	location.href="/";
    	});
    }
});