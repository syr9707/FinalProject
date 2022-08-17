/**
 * 
 */
 
 $(document).ready(function(){
 
     $('#map_bookmark').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );
 
 });