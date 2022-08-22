/**
 * 
 */
 
 $(document).ready(function(){
 	// 윗 버튼 효과 *****************************
 	$('.test_mem_start').hover(
 		function() {
 			$(this).css('background-color', '#E3E3E3')
 		},
 		function() {
 			$(this).css('background-color', '#F8F8F8')
 		}
 	);
 	
 	$('.test_mem_start').click(function(){
 		//var target = $('.interest_text', window.parent.document);
 		//target.trigger('click');
 		
 		parent.location.href="/login";
 	});
 	
 	// 아래 버튼 효과 *****************************
 	$('.test_not_mem_start').hover(
 		function() {
 			$(this).css('background-color', '#ECE39A');
 		},
 		function() {
 			$(this).css('background-color', '#F8EFA6');
 		}
 	);
 	
 	$('.test_not_mem_start').click(function(){
 		var target = $('.interest_text', window.parent.document);
 		target.html('<p>먼저, <span>직업의 의미</span>를 알아볼까요?<br>직업이란 "나의 꿈을 이루어가는 과정"이랍니다.</p>');
 		var span = $('.interest_text span', window.parent.document);
 		span.css('color', '#FF7979');
 	});
 	
 	// 쿠키캐릭터 애니메이션 *************************
    $('.cooking').hover(
        function(){
            $(this).addClass('animate__animated animate__bounce');
        },
        function(){
            $(this).removeClass('animate__animated animate__bounce');
        }
    );
});    
    