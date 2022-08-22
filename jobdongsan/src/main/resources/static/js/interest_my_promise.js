/**
 * 
 */
 
 $(document).ready(function(){
 	$('li:nth-child(3) .test_side_menu,li:nth-child(3) .side_menu_name, .dessert2').css('opacity', '1');
 	
 	// 사이드 메뉴 클릭시
 	$('li:first-child .test_side_menu').click(function(){
 		location.href = "/interest_index2"
 	});
 	
 	$('li:nth-child(2) .test_side_menu').click(function(){
 		location.href = "/interest_index3"
 	});
 	
 	$('li:nth-child(3) .test_side_menu').click(function(){
 		parent.location.href = "/interest_my_promise"
 	});
 	
 	
 	// 컨텐츠 박스 
 	$('.finish_btn').hover(
 		function() {
 			$(this).css('background-color', '#ECE39A');
 		},
 		function() {
 			$(this).css('background-color', '#F8EFA6');
 		}
 	);
 	
});    
    