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
});    
    