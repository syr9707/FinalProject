//**************top*****************/
$(document).ready(function(){
	// 로고 눌렀을 때 메인 페이지로 이동
	$('.logo').click(function(){
		$(location).attr('href', '/');
	});

    // 로고 호버했을 때 애니메이션
    // $('.logo').hover(
    //     function(){
    //         $('.logo img:first-child').addClass('animate__animated animate__headShake');
    //     },
    //     function(){
    //         $('.logo img:first-child').removeClass('animate__animated animate__headShake');
    //     }
    // );
	
    // 흥미 냠냠 호버했을때 애니메이션
    $('.interest').hover(function(){
        $('li:first-child img').attr('src', "/images/ic_int2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:first-child img').attr('src', "/images/ic_int3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    },function(){
        $('li:first-child img').attr('src', "/images/ic_int.png")
        .css('transform', 'rotate(0)');
    });

    // 직업 냠냠 호버했을때 애니메이션
    $('.job').hover(function(){
        $('li:nth-child(2) img').attr('src', "/images/ic_job2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:nth-child(2) img').attr('src', "/images/ic_job3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:nth-child(2) img').attr('src', "/images/ic_job.png")
        .css('transform', 'rotate(0)');
    });
    
    // 영상 냠냠 호버했을때 애니메이션
    $('.video').hover(function(){
        $('li:nth-child(3) img').attr('src', "/images/ic_video2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:nth-child(3) img').attr('src', "/images/ic_video3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:nth-child(3) img').attr('src', "/images/ic_video.png")
        .css('transform', 'rotate(0)');
    });
    

    // 체험 냠냠 호버했을때 애니메이션
    $('.experience').hover(function(){
        $('li:last-child img').attr('src', "/images/ic_map2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:last-child img').attr('src', "/images/ic_map3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:last-child img').attr('src', "/images/ic_map.png")
        .css('transform', 'rotate(0)');
    });
    
    // 탑 버튼 눌렀을 때 최상단으로 이동
    $(".btn_top_up, .btn_top, .btns p").click(function () {
		$('html, body').animate({
			scrollTop: 0
		}, 400);
		return false;
	});

});