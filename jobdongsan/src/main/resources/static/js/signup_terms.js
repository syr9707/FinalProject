// signup_terms.js

$(document).ready(function(){
    // 약관 동의 체크박스
    $('.allcheck').click(function(){
        if($('.allcheck').children('i').hasClass('white')) {
            $('.allcheck').children('i').removeClass('white');
            $('.checkbox').children('i').removeClass('white');
            $('.checkbox').children('i').attr('name', 'chked');
            $('.terms_error').hide();
        } else {
            $('.allcheck').children('i').addClass('white');
            $('.checkbox').children('i').addClass('white');
            $('.checkbox').children('i').attr('name', '');
        }
    });

    $('.checkbox').click(function(){
        if($(this).children('i').hasClass('white')) {
            $(this).children('i').removeClass('white');
            $(this).children('i').attr('name', 'chked');
            if($(this).parents('.terms_check').next().css('display') == 'block'){
                $(this).parents('.terms_check').next().hide();
            }
        } else {
            $(this).children('i').addClass('white');
            $(this).children('i').attr('name', '');
        }
        
		var checked = $('[name*=chked]').length;

		if(checked != 3)
            $('.allcheck').children('i').addClass('white');
		else 
            $('.allcheck').children('i').removeClass('white');
	});

    // 유효성 체크
    $('.btn_agree div:nth-child(1)').click(function(){
        if($('.allcheck i').hasClass('white')) {
            $('.checkbox').children('i').each(function(){
                if($(this).hasClass('white')) {
                    $(this).parents('.checkbox').attr('tabindex', -1).focus();
                    $(this).parents('.terms_check').next().show();
                    return false;
                }
            });
        } else {
            location.href = '/signup';
        }
    });
});