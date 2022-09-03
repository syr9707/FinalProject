/**
 * video_detail.js 
 */
 
 $(document).ready(function(){
  
 	$('.video_star').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );
    
    $('.video_similar_detail').hover(function(){
		$(this).children('.video_thumbnail').css({'opacity':'0.5', 'border':'5px solid #05B4FF'});
 		$(this).children('.video_play').show();
	},function(){
		$(this).children('.video_thumbnail').css({'opacity':'1', 'border':'2px solid #9C9C9C'});
 		$(this).children('.video_play').hide();
 	});
    
    
    $('.video_content img,video').click(function(){
    	$('.video_content img').hide();
    });
 });