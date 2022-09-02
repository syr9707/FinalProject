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


	
	// 질문 API 가져와서 뿌려주기
	$.ajax({
   		type: "GET",
   		url: "http://www.career.go.kr/inspct/openapi/test/questions?apikey=a6a461565fccd2eb51bc229af7f62255&q=19",
    }).done(function(result) {
    	
    	var questionJSON = result.RESULT; 
    	var questionList = [];
    	let randomIndexArray = [];
    	var score1 = 0, score2 = 0, score3 = 0;
    	var score4 = 0, score5 = 0, score6 = 0;
    	var index = 0;
    	
    	// 질문 API 파싱
    	questionJSON.forEach(function(el, index) {
    		//var ran = Math.floor(Math.random() * 47) + 1;
    		questionList2 = questionJSON[index].question;
    		questionList[index] = questionList2;
    	});
    	
    	randomNum(); // 랜덤 번호 선출
    	
    	indexUp(index); // 첫문제 질문
    	
    	console.log(randomIndexArray[index]);
    	
    	// 답변 클릭시 진행
    	$('#yes').click(function(){
    		scoreClickYes(index); // 스코어 쌓기
    	});
    	
		$('#soso').click(function(){
			scoreClickSoso(index); // 스코어 쌓기
    	});
    	
		$('#no').click(function(){
			scoreClickNo(index); // 스코어 쌓기
    	});
    	
    	$('.plate').click(function(){
    		if(index == 19){

		    	callAjax();
		    
    			var target = $('.interest_text', window.parent.document);
 				setTimeout(function(){
 					target.html('<p>자기이해 결과가 나왔습니다.<br>원하는 유형을 선택하여 직업정보를 살펴보세요.</p>');
    				location.href="/interest_result";	
 				}, 300);
    		}else{
    			indexUp(index+1); // 2번째문제부터 번호와 질문
    			index++;
    		}
    		console.log(randomIndexArray[index]);
    	});
    	
    	
    	// 함수들 
    	function randomNum(){
	    	for(var j=0; j<=questionList.length; j++){
	    		
	    		var ran = Math.floor(Math.random() * questionList.length);
	    		
	    		if (randomIndexArray.indexOf(ran) === -1) {
				    randomIndexArray.push(ran);
				}
			}
    	}
    	
    	function indexUp(i){
    		$('.chat_contents').empty();
    		$('.chat_contents').append((i+1) + ". " + questionList[randomIndexArray[i]]);
    	}
    	
    	function callAjax(){
	    	$.ajax({
	    		type: "POST",
	    		url: "interest_score",
	    		data: {'score1': score1, 'score2': score2, 'score3': score3,
	    				'score4': score4, 'score5': score5, 'score6': score6},
		    	success: function(result){
		    	},
		    	error: function(){
		    		alert("전송 실패");
		    	}	
	    	});
	    }
    	
    	function scoreClickYes(i){
    		switch(randomIndexArray[i]){
    			case 0: 
    			case 6: 
				case 12:
				case 24: 
				case 30:
				case 36: 
    				score1 += 1;
    				break;
				case 1: 
				case 2:
				case 7: 
				case 13:
				case 19: 
				case 25:
				case 37:
				case 42: 
				case 43: 
    				score2 += 1;
    				break;
				case 8: 
				case 14:
				case 20: 
				case 44: 
				case 26: 
				case 32: 
				case 28: 
				case 38: 
    				score3 += 1;
    				break;
				case 3: 
				case 9:
				case 15: 
				case 21:
				case 33:
				case 39:
				case 45: 
				case 18:  
				case 27:
    				score4 += 1;
    				break;
				case 4: 
				case 10:
				case 16: 
				case 22:
				case 34:
				case 40: 
    				score5 += 1;
    				break;
				case 5: 
				case 11:
				case 17: 
				case 23: 
				case 47: 
				case 29: 
				case 31:
				case 35: 
				case 46:
				case 41: 
    				score6 += 1;
    				break;
    		}
    	}
    	
    	function scoreClickSoso(i){
    		switch(randomIndexArray[i]){
    			case 29: 
				case 31:
				case 37:
				case 43: 
    				score1 += 1;
    				break;	
    			case 0: 
				case 6: 
				case 12:
				case 24: 
				case 18: 
				case 22: 
				case 26: 
				case 32:
				case 30: 
				case 36: 
				case 38:
    				score2 += 1;
    				break;
				case 1: 
				case 13:
				case 2: 
				case 19:
				case 34:
				case 41: 
				case 42:
    				score3 += 1;
    				break;
				case 5: 
				case 11:
				case 17: 
				case 23: 
				case 47: 
				case 35: 
				case 46:
				case 40: 
    				score4 += 1;
    				break;
				case 7: 
				case 8: 
				case 14:
				case 15: 
				case 21:
				case 33:
				case 39:
				case 45:  
				case 20: 
				case 44:
				case 27: 
				case 28: 
    				score5 += 1;
    				break;
    			case 3: 
				case 4: 
				case 9: 
    			case 10: 
				case 16: 
				case 25:
    				score6 += 1;
    				break;	
    		}
    	}
    	
    	function scoreClickNo(i){
    		switch(randomIndexArray[i]){
    			case 3: 
    			case 10:
    			case 15: 
				case 21:
				case 33:
				case 39:
				case 45:  
				case 18: 
				case 20: 
				case 44:
				case 34: 
				case 40: 
    				score1 += 1;
    				break;
    			case 16: 
    			case 35: 
				case 46: 
    				score2 += 1;
    				break;		
				case 4: 
				case 5: 
				case 11:
				case 17: 
				case 23: 
				case 47: 
				case 9: 
				case 27:
				case 29: 
				case 31:
				case 37: 
    				score3 += 1;
    				break;
				case 6: 
				case 12:
				case 24: 
				case 7: 
				case 22:
				case 25:
				case 30: 
				case 38:  
    				score4 += 1;
    				break;	
    			case 1: 
				case 13:
				case 36: 
				case 41: 
    				score5 += 1;
    				break;	
    			case 0: 
				case 2: 
				case 19: 
				case 8: 
				case 14:
				case 26: 
				case 32:
				case 28: 
				case 42:
				case 43: 
    				score6 += 1;
    				break;
    		}
    	}
    	
    });// ajax 끝  
});// ready 끝    
    
   
   	
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    