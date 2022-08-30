// signup.js

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
            $('.email_auth').css('background-color', '#FFFACD');
            $('.email_auth').css('color', 'black');
        } else {
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        }
    });

    // 우편번호찾기 눌렀을 때
    $('.find_zipcode').on('click', function(){
        new daum.Postcode({
            oncomplete:function(data){
            var address1 = "";
                
                // 도로명 주소인 경우
                if(data.userSelectedType == 'R'){
                    address1 = data.roadAddress + "(" + data.bname + data.buildingName + ")"; 			
                } else { // 지번 주소인 경우
                    address1 = data.jibunAddress;
                }
                
                // 우편번호와 address1 입력란에 우편번호 주소1 출력
                document.getElementById('zipcode').value = data.zonecode;
                document.getElementById('address1').value = address1;
                
                // 상세 주소 입력하도록 이미 입력되어 있는 값 삭제하고 포커스
                var address2 = document.getElementById('address2');
                address2.value = "";
                address2.focus(); 			
                }
        }).open();
    });

    // ********************이메일 인증 추가 필요
	$('.email_auth').click(function() {
		const check_email = $('.email1').val() + "@" + $('.email2').val(); // 이메일 주소값 얻어오기!
		console.log('완성된 이메일 : ' + check_email); // 이메일 오는지 확인 
		
		$.ajax({
			type : 'get',
			url : '/mailCheck', // GET방식이라 Url 뒤에 email을 뭍힐수있다.
			data : {"email": check_email},
			dataType: "text",
			success : function (data) {
				console.log("data : " +  data);
				$('.email_auth_check').attr('disabled',false);
				$('.email_auth_check').css('background-color', '#ffffff');
				$('.email_auth_check').show();
				$('.email_auth_check').focus();
				code = data;
				alert('인증번호가 전송되었습니다.')
				
			}			
		}); // end ajax
	}); // end send eamil
	
	// 인증번호 비교 
	// blur -> focus가 벗어나는 경우 발생
	$('.email_auth_check').blur(function () {
		const inputCode = $(this).val();
		const $resultMsg = $('.email_auth_text');
		
		if(inputCode === code){
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.show();
			$resultMsg.css('color','green');
			$('.email_auth_btn').attr('disabled',true);
			$('.email1').attr('readonly',true);
			$('.email2').attr('readonly',true);
			$('.email2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
	        $('.email2').attr('onChange', 'this.selectedIndex = this.initialSelect');
		}else{
			$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
			$resultMsg.show();
			$resultMsg.css('color','red');
		}
	});

    // 유효성 검사
    // 아이디 체크
    $('.id').blur(function(){
        var id_rule = /^[a-z0-9_-]{5,20}$/;
        var id = $('.id').val();

        if(!id) {
            $('#id_error').text('아이디를 입력해주세요.')
            $('#id_error').show();
        } else if(!id_rule.test(id)) {
            $('#id_error').text('아이디는 5자~20자의 영문 소문자, 숫자와 특수기호(_) , (-)만 사용 가능합니다.')
            $('#id_error').show();
        } else {
            $('#id_error').hide();
        }
    });

    // 비밀번호 체크
    $('.pw').blur(function(){
        var pw_rule = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
        var pw = $('.pw').val();

        if(!pw) {
            $('#pw_error').text('비밀번호를 입력해주세요.')
            $('#pw_error').show();
        } else if(!pw_rule.test(pw)) {
            $('#pw_error').text('비밀번호는 8자~16자의 영문 대 소문자, 숫자, 특수문자를 조합해서 사용해주세요.')
            $('#pw_error').show();
        } else {
            $('#pw_error').hide();
        }
    });
    
    // 비밀번호 확인 체크
    $('.pw_chk').blur(function(){
        var pw = $('.pw').val();
        var pw_chk = $('.pw_chk').val();

        if(!pw_chk) {
            $('#pw_chk_error').text('비밀번호를 입력해주세요.')
            $('#pw_chk_error').show();
        } else if(pw_chk != pw) {
            $('#pw_chk_error').text('비밀번호가 일치하지 않습니다.')
            $('#pw_chk_error').show();
        } else {
            $('#pw_chk_error').hide();
        }
    });

    // 이름 체크
    $('.name').blur(function(){
        var name = $('.name').val();

        if(name == "") {
            $('#name_error').show();
        } else {
            $('#name_error').hide();
        }
    });

    // 자녀나이 확인 체크
    $('.birth_year').blur(function(){
        var year_rule = /^[0-9]{4}$/; // 숫자 정규식
        var year = $('.birth_year').val();
        
        if(year == "") {
            $('#birth_error').text('태어난 년도를 입력해주세요.')
            $('#birth_error').show();
        } else if(!year_rule.test(year)){
            $('#birth_error').text('태어난 년도 4자리를 정확하게 입력해주세요.')
            $('#birth_error').show();
        } else {
            $('#birth_error').hide();
        }
    });

    $('.birth_month').blur(function(){
        var idx1 = $(".birth_month option").index($(".birth_month option:selected"));

        if(idx1 == 0) {
            $('#birth_error').text('태어난 월을 선택해주세요.')
            $('#birth_error').show();
        } else {
            $('#birth_error').hide();
        }
    });

    $('.birth_date').blur(function(){
        var idx2 = $(".birth_date option").index($(".birth_date option:selected"));

        if(idx2 == 0) {
            $('#birth_error').text('태어난 일을 선택해주세요.')
            $('#birth_error').show();
        } else {
            $('#birth_error').hide();
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
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        } else if(!id_rule.test(email1)){
            $('#email_error').text('이메일 아이디를 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
        }
        
        if(email2 == "") {
            
        } else if(!email_rule.test(email)){
            $('#email_error').text('이메일을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
            $('.email_auth').css('background-color', '#FFFACD');
            $('.email_auth').css('color', 'black');
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
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        } else if(!mail_rule.test(email2)) {
            $('#email_error').text('이메일 도메인을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
        }

        if(email1 == "") {
            
        } else if(!email_rule.test(email)){
            $('#email_error').text('이메일을 형식에 맞게 입력해주세요.')
            $('#email_error').show();
            $('.email_auth').css('background-color', '#bbbbbb');
            $('.email_auth').css('color', '#ffffff');
        } else {
            $('#email_error').hide();
            $('.email_auth').css('background-color', '#FFFACD');
            $('.email_auth').css('color', 'black');
        }
    });

    // 이메일체크
    $('.email1, .email2, .email3').blur(function(){
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
    
    // 이메일 인증 체크
    if($('.email_auth_text').html() != "인증번호가 일치합니다.") {
    	$('.email_auth_check').focus();
    	return false;
    };

    // 전화번호 체크
    $('.phone').blur(function(){
        var phone_rule = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;
        var phone = $('.phone').val();

        if(!phone) {
            $('#phone_error').text('전화번호 입력해주세요.')
            $('#phone_error').show();
        } else if(!phone_rule.test(phone)) {
            $('#phone_error').text('전화번호를 다시 확인해주세요.')
            $('#phone_error').show();
        } else {
            $('#phone_error').hide();
        }
    });


    // 회원가입 눌렀을 때 체크
    $('.signup').click(function(){
        // 아이디 체크
        var id = $('.id').val();

        if(!id) {
            $('#id_error').text('아이디를 입력해주세요.')
            $('#id_error').show();
            $('.id').focus();
            return false;
        }

        // 비밀번호 체크
        var pw = $('.pw').val();

        if(!pw) {
            $('#pw_error').text('비밀번호를 입력해주세요.')
            $('#pw_error').show();
            $('.pw').focus();
            return false;
        }

        // 비밀번호 확인 체크
        var pw_chk = $('.pw_chk').val();

        if(!pw_chk) {
            $('#pw_chk_error').text('비밀번호를 입력해주세요.')
            $('#pw_chk_error').show();
            $('.pw_chk').focus();
            return false;
        }

        // 이름 체크
        var name = $('.name').val();

        if(name == "") {
            $('#name_error').show();
            $('.name').focus();
            return false;
        } else {
            $('#name_error').hide();
        }

        // 자녀나이 체크
        var birth_year = $('.birth_year').val();
        var idx1 = $(".birth_month option").index($(".birth_month option:selected"));
        var idx2 = $(".birth_date option").index($(".birth_date option:selected"));

        if(birth_year == "") {
            $('#birth_error').text('태어난 년도를 입력해주세요.')
            $('#birth_error').show();
            $('.birth_year').focus();
            return false;
        } else if(idx1 == 0) {
            $('#birth_error').text('태어난 월을 선택해주세요.')
            $('#birth_error').show();
            $('.birth_month').focus();
            return false;
        } else if(idx2 == 0) {
            $('#birth_error').text('태어난 일을 선택해주세요.')
            $('#birth_error').show();
            $('.birth_date').focus();
            return false;
        } else {
            $('#birth_error').hide();
        }

        // 전화번호 체크
        var phone_rule = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;
        var phone = $('.phone').val();

        if(!phone) {
            $('#phone_error').text('전화번호 입력해주세요.')
            $('#phone_error').show();
            $('.phone').focus();
            return false;
        } else if(!phone_rule.test(phone)) {
            $('#phone_error').text('전화번호를 다시 확인해주세요.')
            $('#phone_error').show();
            $('.phone').focus();
            return false;
        } else {
            $('#phone_error').hide();
        }

        // 주소 체크
        var zipcode = $('.zipcode').val();
        var address1 = $('.address1').val();
        var address2 = $('.address2').val();

        if(zipcode == "" || address1 == "" || address2 == "") {
            $('#address_error').show();
            $('.address2').focus();
            return false;
        } else {
            $('#address_error').hide();
        }

        $('#signup_form').submit();
    });
});