//**************top*****************/
$(document).ready(function(){
    // 흥미 냠냠 호버했을때 애니메이션
    $('.interest').hover(function(){
        $('li:first-child img').attr('src', "images/ic_int2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:first-child img').attr('src', "images/ic_int3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    },function(){
        $('li:first-child img').attr('src', "images/ic_int.png")
        .css('transform', 'rotate(0)');
    });

    // 직업 냠냠 호버했을때 애니메이션
    $('.job').hover(function(){
        $('li:nth-child(2) img').attr('src', "images/ic_job2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:nth-child(2) img').attr('src', "images/ic_job3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:nth-child(2) img').attr('src', "images/ic_job.png")
        .css('transform', 'rotate(0)');
    });

    // 체험 냠냠 호버했을때 애니메이션
    $('.experience').hover(function(){
        $('li:last-child img').attr('src', "images/ic_map2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:last-child img').attr('src', "images/ic_map3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:last-child img').attr('src', "images/ic_map.png")
        .css('transform', 'rotate(0)');
    });

});