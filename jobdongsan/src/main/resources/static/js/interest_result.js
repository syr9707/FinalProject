/**
 * 
 */
 
 $(document).ready(function(){
 	$('li:nth-child(2) .test_side_menu,li:nth-child(2) .side_menu_name, .dessert').css('opacity', '1');
 	
 	// 사이드 메뉴 클릭시
 	$('li:first-child .test_side_menu').click(function(){
 		var target = $('.interest_text', window.parent.document);
 		target.html('<p>먼저, <span>직업의 의미</span>를 알아볼까요?<br>직업이란 "나의 꿈을 이루어가는 과정"이랍니다.</p>');
 		var span = $('.interest_text span', window.parent.document);
 		span.css('color', '#FF7979');
 		location.href = "/interest_test2"
 	});
 	
 	$('li:nth-child(2) .test_side_menu').click(function(){
 		var target = $('.interest_text', window.parent.document);
 		target.html('<p>나의 흥미를 알아보는 <span>‘자기이해’</span> 단계입니다.<br>질문에 솔직하게 대답하고 쿠키씨와 함께 음식을 만들보세요.</p>');
 		var span = $('.interest_text span', window.parent.document)
 		span.css('color', '#4AC047');
 		location.href = "/interest_test3"
 	});
 	
 	$('li:nth-child(3) .test_side_menu').click(function(){
 		parent.location.href = "/interest_my_promise"
 	});
 	
 	
 	// 컨텐츠 박스 
 	$('.next_btn').click(function(){
 		location.href = "/interest_result2";
 	});
 	
});    
    