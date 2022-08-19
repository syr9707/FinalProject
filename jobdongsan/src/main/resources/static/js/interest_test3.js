/**
 * 
 */
 
 $(document).ready(function(){
 	$('li:nth-child(2) .test_side_menu,li:nth-child(2) .side_menu_name, .dessert').css('opacity', '1');
 	
 	$('.plate').click(function(){
 		var target = $('.interest_text', window.parent.document);
 		var span = $('.interest_text span', window.parent.document);
 		target.html('<p>자기이해 결과가 나왔습니다.<br>원하는 유형을 선택하여 직업정보를 살펴보세요.</p>');
 		span.css('color', '#FF7979');
 		location.href="/interest_result";
 	});
 	
 	$('.back_arrow').click(function(){
 		location.href = "/interest_test2";
 	});
 	
 	// 1번째 접시 호버시 
 	$('.plate:nth-child(5)').hover(function(){
 		$('.plate:nth-child(5) .food').show();
 		$('.plate:nth-child(5) p').css('color', 'white').css('text-shadow', '1px 1px 5px black');
 	},function(){
 		$('.plate:nth-child(5) .food').hide();	
 		$('.plate:nth-child(5) p').css('color', 'black').css('text-shadow', '');
 	});
 	
 	// 2번째 접시 호버시 
 	$('.plate:nth-child(6)').hover(function(){
 		$('.plate:nth-child(6) .food').show();
 		$('.plate:nth-child(6) p').css('color', 'white').css('text-shadow', '1px 1px 5px black');
 	},function(){
 		$('.plate:nth-child(6) .food').hide();	
 		$('.plate:nth-child(6) p').css('color', 'black').css('text-shadow', '');
 	});
 	
 	// 3번째 접시 호버시 
 	$('.plate:nth-child(7)').hover(function(){
 		$('.plate:nth-child(7) .food').show();
 		$('.plate:nth-child(7) p').css('color', 'white').css('text-shadow', '1px 1px 5px black');
 	},function(){
 		$('.plate:nth-child(7) .food').hide();	
 		$('.plate:nth-child(7) p').css('color', 'black').css('text-shadow', '');
 	});
});    
    