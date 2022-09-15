// mypage_detail.js

$(document).ready(function(){
    // 정보 수정 버튼 눌렀을 때
    $('.btn_mypage_update').click(function(){
        $('#mypage_detail_form').submit();
    });

    // 로그아웃 버튼 눌렀을 때
    $('.btn_logout').click(function(){
        location.href='/logout';
    });
    
    // 프로필 사진이 있을때
    if($('.my_profile_img').attr('src') != ""){
		$('.my_profile_img').show();
		$('.my_jobdongsan_pic').hide();
	}
    
    // 체험 장소 보여지는 수량
    for(var i=1; i<=7; i++){
 	$('.my_interest_type_job:nth-child('+ i +')').show();
 	}
    
    // 체험 장소 보여지는 수량
    for(var i=1; i<=7; i++){
 	$('.my_interest_type_map:nth-child('+ i +')').show();
 	}
 	
 	
});