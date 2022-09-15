// mypage_index.js

$(document).ready(function(){
	// 엔터키 눌렀을 때 무조건 submit되지 않도록
    $(document).on('keydown', function (e) {
        if (e.keyCode == 13) return false;
    });

    // 입력칸에 포커스 시 테두리 변경
    // 포커스 되었을 때
    $('input[type!=button]').focus(
        function () {
            $(this).css('border', '1px solid black');
        },
    );

    // 포커스 아웃 되었을 때
    $('input[type!=button]').blur(
        function () {
            $(this).css('border', '1px solid #bbbbbb');
        }
    );

    // 확인 버튼 눌렀을 때 비밀번호 체크
    $('.check').click(function(){
        event.preventDefault();
        
        $.ajax({
        	type: "post",
        	url: "checkPw",
        	data: {"input_pw": $('.pw').val()},
 			dataType: "text",
 			success: function(result){
 				if(result == "success") {
 					$('#pw_chk_error').hide();
 					if($('#chk').val() == "1") {
 						$('#to_mypage_update').submit();
 					} else {
 						$('#to_delete_memberInfo').submit();
 					}
 				} else {
 					$('#pw_chk_error').show();
 				}
 			},
 			error: function(){
 				alert("전송 실패");
 			}
        });
    });
});