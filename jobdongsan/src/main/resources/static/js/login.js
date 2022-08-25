// login.js

$(document).ready(function(){
    // 각 입력칸에 입력하려고 누르면 테두리 변경
    // 포커스 되었을 때
    $('input').focus(
        function () {
            $(this).css('border', '1px solid black');
        },
    );

    // 포커스 아웃 되었을 때
    $('input').blur(
        function () {
            $(this).css('border', '1px solid #cccccc');
        }
    );
    
    // 로그인 유지하기 버튼 눌렀을 때
    $('.login_continue').click(function(){
    	if($('.login_continue span i').hasClass('fa-circle')){
	    	$('.login_continue span i').removeClass('fa-circle');
	    	$('.login_continue span i').addClass('fa-circle-check');
    	} else {
    		$('.login_continue span i').removeClass('fa-circle-check');
    		$('.login_continue span i').addClass('fa-circle');
    	}
    });

    // 로그인 버튼 눌렀을 때 submit
    $('.btn_login').click(function(){
    	
    	// 로그인 유효성 검사
        if($('#id').val() == "") {
        	$('#id').focus();
            $('#id').css('border', '1px solid #f33333');
            $('.login_error').css('visibility', 'visible');
            $('.login_error').text('아이디를 입력해주세요.');
            return false;
        }
        
        if($('#pw').val() == "") {
        	$('#pw').focus();
            $('#pw').css('border', '1px solid #f33333');
            $('.login_error').css('visibility', 'visible');
            $('.login_error').text('비밀번호를 입력해주세요.');
            return false;
        }
        
        // 로그인 체크 기능
        event.preventDefault();

        $.ajax({
            type: "post",
            url: "loginCheck",
            data:{"memId": $('#id').val(),
                  "memPw": $('#pw').val()},
            dataType: "text",
            success: function(result){
                if(result == "success"){
                	$('.login_error').css('visibility', 'hidden');
                    location.href="/";
                }else{
                    $('#id').css('border', '1px solid #f33333');
                    $('.login_error').css('visibility', 'visible');
                    console.log(result);
                }
            },
            error: function(){
            	alert("전송 실패");
            }
        });
    });
});