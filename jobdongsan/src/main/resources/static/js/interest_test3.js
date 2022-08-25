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
 		location.href = "/interest_test3"
 	});
 	
 	$('li:nth-child(3) .test_side_menu').click(function(){
 		parent.location.href = "/interest_my_promise"
 	});
 	
 	
 	// 컨텐츠 박스 
 	$('.plate').click(function(){
 		var target = $('.interest_text', window.parent.document);
 		target.html('<p>자기이해 결과가 나왔습니다.<br>원하는 유형을 선택하여 직업정보를 살펴보세요.</p>');
 		//location.href="/interest_result";
 	});
 	
 	$('.back_arrow').click(function(){
 		var target = $('.interest_text', window.parent.document);
 		target.html('<p>먼저, <span>직업의 의미</span>를 알아볼까요?<br>직업이란 "나의 꿈을 이루어가는 과정"이랍니다.</p>');
 		var span = $('.interest_text span', window.parent.document);
 		span.css('color', '#FF7979');
 		location.href = "/interest_test2";
 	});
 	
 	//접시 호버시 
 	$('.plate').hover(function(){
 		$(this).children('.food').show();
 		$(this).children('p').css('color', 'white').css('text-shadow', '1px 1px 5px black');
 	},function(){
 		$(this).children('.food').hide();	
 		$(this).children('p').css('color', 'black').css('text-shadow', '');
 	});


	$.ajax({
   		type: "GET",
   		url: "http://www.career.go.kr/inspct/openapi/test/questions?apikey=a6a461565fccd2eb51bc229af7f62255&q=19",
    }).done(function(result) {
    	
    	var questionJSON = result.RESULT; 
    	var questionList = new Array();
    	
    	questionJSON.forEach(function(el, i) {
    		//var ran = Math.floor(Math.random() * 47) + 1;
    		questionList2 = questionJSON[i].question;
    		questionList[i] = questionList2;
    	});
    	
    	var i=0
    	
    	indexUp(i);
    	$('.plate').click(function(){
    		if(i == 19){
    			location.href="/interest_result";
    		}else{
    			indexUp(i+1);
    			i++;
    		}
    	});
    	
    	function indexUp(i){
    		var ran = Math.floor(Math.random() * 47) + 1;
    		$('.chat_contents').empty();
    		$('.chat_contents').append((i+1) + ". " + questionList[ran]);
    	}
    	
    });
    
    function callAjax(){
    	$.ajax({
    		type: "POST",
    		url: "interest_index3_1",
    		data: questionList,
    		dataType: 'text',
	    	success: function(result){
	    		
	    	},
	    	error: function(){
	    		alert("전송 실패");
	    	}	
    	});
    }
});    
    
   
   	
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    