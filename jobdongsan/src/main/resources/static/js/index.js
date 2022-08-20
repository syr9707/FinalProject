// index.js

$(document).ready(function(){
    $('.main_menu_dongsan img').not('#main_house').hover(
        function(){
            $(this).addClass('animate__animated animate__bounce');
        },
        function(){
            $(this).removeClass('animate__animated animate__bounce');
        }
    );

    $('#main_sun').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );

    $('#main_car').click(function(){
            if($(this).hasClass('animate__animated animate__backInLeft')) {
                $(this).removeClass('animate__animated animate__backInLeft');
            }
            else
                $(this).addClass('animate__animated animate__backInLeft');
    });

    $('#main_today_cookie').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );

    $('#main_biscuit').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );
    
    $('.today_job_wrap').click(function(){
    	location.href='/job_detail';
    });
    
    $('.today_map_wrap').click(function(){
    	location.href='/map_detail';
    });
    
    $('.today_video_img img').click(function(){
    	location.href='/video_detail';
    });
});