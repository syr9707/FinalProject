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
});