/**
 * 
 */
 
 $(document).ready(function(){
 	$('li:nth-child(1) .test_side_menu,li:nth-child(1) .side_menu_name, .light_bulb').css('opacity', '1');

	
 	// 사이드 메뉴 클릭시
 	
 	$('li:first-child .test_side_menu').click(function(){
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
 	// 중요성 알아보기 말풍선 클릭시
 	$('.chat_bubble, .contents_box').click(function(){
 		$('.chat_bubble, .contents_box').hide();
 		$('.three_point_thumbnail').show().css('display', 'flex');
 	});
 	 
 	// 첫째를 클릭시
 	$('.three_point:first-child').click(function(){
 		$('.three_point_thumbnail').hide();
 		$('.three_point_contents:nth-child(7)').show();
 	});
 	
 	// 둘째를 클릭시
 	$('.three_point:nth-child(2)').click(function(){
 		$('.three_point_thumbnail').hide();
 		$('.three_point_contents:nth-child(8)').show();
 	});
 	
 	// 셋째를 클릭시
 	$('.three_point:nth-child(3)').click(function(){
 		$('.three_point_thumbnail').hide();
 		$('.three_point_contents:nth-child(9)').show();
 	});
 	
 	// 첫째내용 왼쪽 오른쪽 화살표 클릭시
 	$('.three_point_contents:nth-child(7) .back_arrow').click(function() {
 		$('.three_point_contents:nth-child(7)').hide();
 		$('.three_point_thumbnail').show();
 	});
 	
 	$('.three_point_contents:nth-child(7) .next_arrow').click(function() {
 		$('.three_point_contents:nth-child(7)').hide();
 		$('.three_point_contents:nth-child(8)').show();
 	});
 	
 	// 둘째내용 왼쪽 오른쪽 화살표 클릭시
 	$('.three_point_contents:nth-child(8) .back_arrow').click(function() {
 		$('.three_point_contents:nth-child(8)').hide();
 		$('.three_point_contents:nth-child(7)').show();
 	});
 	
 	$('.three_point_contents:nth-child(8) .next_arrow').click(function() {
 		$('.three_point_contents:nth-child(8)').hide();
 		$('.three_point_contents:nth-child(9)').show();
 	});
 	
 	// 셋째내용 왼쪽 오른쪽 화살표 클릭시
 	$('.three_point_contents:nth-child(9) .back_arrow').click(function() {
 		$('.three_point_contents:nth-child(9)').hide();
 		$('.three_point_contents:nth-child(8)').show();
 	});
 	
 	$('.three_point_contents:nth-child(9) .next_arrow').click(function() {
 		var target = $('.interest_text', window.parent.document);
 		target.html('<p>나의 흥미를 알아보는 <span>‘자기이해’</span> 단계입니다.<br>질문에 솔직하게 대답하고 쿠키씨와 함께 음식을 만들보세요.</p>');
 		$('.interest_text span', window.parent.document).css('color', '#4AC047');
 		location.href="/interest_test3";
 	});
});    
    