// find_pw.js

$(document).ready(function(){
    // 엔터키 눌렀을 때 무조건 submit되지 않도록
    $(document).on('keydown', function (e) {
        if (e.keyCode == 13) return false;
    });

    // 각 입력칸에 입력하려고 누르면 테두리 변경
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

    // select 포커스 되었을 때
    $('select').focus(
        function () {
            $(this).css('border', '1px solid black');
        },
    );

    // select 포커스 아웃 되었을 때
    $('select').blur(
        function () {
            $(this).css('border', '1px solid #bbbbbb');
        }
    );

    // 이메일 주소를 선택했을 때 직접 입력 칸 초기화, 비활성화
    $('.email3').change(function () {
        $(".email3 option:selected").each(function () {
            if ($(this).val() == "") { //직접입력일 경우
                $(".email2").val('');
                $(".email2").attr("readonly", false);
                $(".eamil2").removeClass("bg_gray");
            } else { //직접입력이 아닐경우
                $(".email2").val($(this).text());
                $(".email2").attr("readonly", true);
                $(".eamil2").addClass("bg_gray");
            }
        });

        if(!$('.email1').val() == "" && !$('.email2').val() == "") {
            $('.email_code').css('background-color', '#FFFACD');
            $('.email_code').css('color', 'black');
        } else {
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        }
    });

    // 이메일 아이디 체크
    $('.email1').blur(function(){
        var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        var id_rule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*/;
        var email1 = $(".email1").val();
        var email2 = $(".email2").val();
        var email = email1 + "@" + email2;
        
        if(!email1) {
            $('#email_error').text('이메일 아이디를 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        } else if(!id_rule.test(email1)){
            $('#email_error').text('이메일 아이디를 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
        }
        
        if(email2 == "") {
            
        } else if(!email_rule.test(email)){
            $('#email_error').text('이메일을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
            $('.email_code').css('background-color', '#FFFACD');
            $('.email_code').css('color', 'black');
        }
    });

    // 이메일 도메인 체크
    $('.email2').blur(function(){
        var email_rule =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
        var mail_rule = /^[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
        var email1 = $(".email1").val();
        var email2 = $(".email2").val();
        var email = email1 + "@" + email2;

        if(!email2) {
            $('#email_error').text('이메일 도메인을 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        } else if(!mail_rule.test(email2)) {
            $('#email_error').text('이메일 도메인을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
        }

        if(email1 == "") {
            
        } else if(!email_rule.test(email)){
            $('#email_error').text('이메일을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
            $('.email_code').css('background-color', '#FFFACD');
            $('.email_code').css('color', 'black');
        }
    });

    $('.email1, .email2, .email3').blur(function(){
        // 이메일체크
        var email_rule =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
        var email1 = $(".email1").val();
        var email2 = $(".email2").val();
        var email = email1 + "@" + email2;  
        
        if(!email_rule.test(email)){
            $('#email_error').text('이메일을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_code').css('background-color', '#bbbbbb');
            $('.email_code').css('color', '#ffffff');
            $('.email1').focus();
            return false;
        } else {
            $('#email_error').hide();
            $('.email_code').css('background-color', '#FFFACD');
            $('.email_code').css('color', 'black');
        }
    });
});