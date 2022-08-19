/**
 * 
 */
 
 $(document).ready(function(){
 	$('li:nth-child(3) .test_side_menu,li:nth-child(3) .side_menu_name, .dessert2').css('opacity', '1');
 	
 	$('.finish_btn').hover(
 		function() {
 			$(this).css('background-color', '#ECE39A');
 		},
 		function() {
 			$(this).css('background-color', '#F8EFA6');
 		}
 	);
 	
});    
    