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
    
 });