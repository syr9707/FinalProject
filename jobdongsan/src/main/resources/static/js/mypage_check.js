// mypage_index.js

$(document).ready(function(){
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
    // 추가 ajax 작업 필요
    $('.check').click(function(){
        $('mypage_check_form').submit();
    });
});