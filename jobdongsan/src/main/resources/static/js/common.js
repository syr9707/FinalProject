//**************top*****************/
$(document).ready(function(){
	// 로고 눌렀을 때 메인 페이지로 이동
	$('.logo').click(function(){
		$(location).attr('href', '/');
	});

    // 로고 호버했을 때 애니메이션
    // $('.logo').hover(
    //     function(){
    //         $('.logo img:first-child').addClass('animate__animated animate__headShake');
    //     },
    //     function(){
    //         $('.logo img:first-child').removeClass('animate__animated animate__headShake');
    //     }
    // );
	
    // 흥미 냠냠 호버했을때 애니메이션
    $('.interest').hover(function(){
        $('li:first-child img').attr('src', "/images/ic_int2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:first-child img').attr('src', "/images/ic_int3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    },function(){
        $('li:first-child img').attr('src', "/images/ic_int.png")
        .css('transform', 'rotate(0)');
    });

    // 직업 냠냠 호버했을때 애니메이션
    $('.job').hover(function(){
        $('li:nth-child(2) img').attr('src', "/images/ic_job2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:nth-child(2) img').attr('src', "/images/ic_job3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:nth-child(2) img').attr('src', "/images/ic_job.png")
        .css('transform', 'rotate(0)');
    });
    
    // 영상 냠냠 호버했을때 애니메이션
    $('.video').hover(function(){
        $('li:nth-child(3) img').attr('src', "/images/ic_video2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:nth-child(3) img').attr('src', "/images/ic_video3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:nth-child(3) img').attr('src', "/images/ic_video.png")
        .css('transform', 'rotate(0)');
    });
    

    // 체험 냠냠 호버했을때 애니메이션
    $('.experience').hover(function(){
        $('li:last-child img').attr('src', "/images/ic_map2.png")
        .css('transform', 'rotate(20deg)').css('transition', '0.3s');
        setTimeout(function(){
            $('li:last-child img').attr('src', "/images/ic_map3.png")
            .css('transform', 'rotate(-20deg)');
        }, 300);
    }, function(){
        $('li:last-child img').attr('src', "/images/ic_map.png")
        .css('transform', 'rotate(0)');
    });
    
    // 탑 버튼 눌렀을 때 최상단으로 이동
    $(".btn_top_up, .btn_top, .btns p").click(function () {
		$('html, body').animate({
			scrollTop: 0
		}, 400);
		return false;
	});
	
	// 챗봇 버튼 눌렀을 떄 애니메이션
	var cnt = 0;
	$('.main_chatbot').on("click", function(){
		if(cnt % 2 == 0) {
			$('.main_chat_box').css('display', 'block');
			$('.main_chat_box').addClass('animate__animated animate__bounceInUp');
			
			callAjax();
			
            setTimeout(function(){
                $('.main_chat_box').removeClass('animate__animated animate__bounceInUp');
            },1000);
		} else {
			$('.main_chat_box').css('display', 'block');
			$('.main_chat_box').addClass('animate__animated animate__bounceOutDown');
			$('.main_chatbot_box').text("");
            setTimeout(function(){
                $('.main_chat_box').removeClass('animate__animated animate__bounceOutDown');
                $('.main_chat_box').css('display', 'none');
            },1000);
		}
		cnt++;
	});
	
	// 챗봇 버튼과 챗봇 영역 밖 클릭 했을 때 닫기
	$(document).mouseup(function (e){
		var LayerPopup = $('.main_chat_box');
		var Chatbot = $('.main_chatbot');
		if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0 && !Chatbot.is(e.target)) {
			if($('.main_chat_box').css('display') == 'block') {
				$('.main_chat_box').css('display', 'block');
				$('.main_chat_box').addClass('animate__animated animate__bounceOutDown');
				$('.main_chatbot_box').text("");
	            setTimeout(function(){
	                $('.main_chat_box').removeClass('animate__animated animate__bounceOutDown');
	                $('.main_chat_box').css('display', 'none');
	            },1000);
	            cnt++;
			}
		}
	});
	
	// 메인 챗봇 ajax 추가 예정
	
	
	$('#chatForm').on('submit', function(){
 		// submit 이벤트 기본 기능 : 페이지 새로 고침
 		// 기본 기능 중단
 		event.preventDefault();
 		
 		if($('#main_message').val() == ""){
			alert("질문을 입력해주세요");
			$('#main_message').focus();
			return false;
		} 		
 		
 		// chatBox에 보낸 메시지 추가
		$('.main_chatbot_box').append('<div class="main_msgBox send"><div id="in"><div id="main_user_text">' + $('#main_message').val() + '</div></div></div>');
 		
   			callAjax();
 		
 		$('#main_message').val('');
 	}); // submit 끝
 	
 	// ajax() 부분을 별도의 함수로 분리
 	function callAjax(){
 		$.ajax({
 			type:"post",
 			url:"/mainChatbot",
 			data:{"message":$('#main_message').val()},
 			dataType:"json",
			success:function(result){
			
				// 파싱 시작
				var bubbles = result.bubbles;
				//console.log(bubbles[0].data.contentTable);
				//console.log(bubbles[1].data.contentTable[0][0].data.data.action.data.url);
				for(var b in bubbles){
					if(bubbles[b].type == 'text'){ // 기본 답변인 경우
						
						/* chatBox에 받은 메시지 추가 */
						if(bubbles[b] == bubbles[0]){
							$('.main_chatbot_box').append('<div class="main_msgBox receive"><span id="in"><div id="main_chatbot"><div><img src="/images/mainChatbot_gingerbread_man.png"></div><div class="main_chatbot_name">잡동산</div></div><div id="main_chatbot_text">' + 
															 bubbles[b].data.description + '</div></span>'); 
						}else{
							$('.main_chatbot_box').append('<div class="main_msgBox receive"><span id="in"><div id="main_chatbot"></div><div id="main_chatbot_text">' + 
														   bubbles[b].data.description +'</div></span>'); 
						}
						
															   
					}else if(bubbles[b].type == 'template'){//이미지 답변 또는 멀티링크 답변 시작
						if(bubbles[b].data.cover.type == "image"){//이미지 이면
						
							if(bubbles[b] == bubbles[0]){
								$(".main_chatbot_box").append("<div class='main_msgBox receive'><span id='in'><div id='main_chatbot'><div><img src='/images/mainChatbot_gingerbread_man.png'></div><div class='main_chatbot_name'>잡동산</div></div><div><img src='" + bubbles[b].data.cover.data.imageUrl + 
																		 "' alt='이미지 없음' style='border-radius: 30px'><br><div class='chatbot_url'></div></div></span>");
							}else{
								$(".main_chatbot_box").append("<div class='main_msgBox receive'><span id='in'><div id='main_chatbot'><div><img src='" + bubbles[b].data.cover.data.imageUrl + 
																		 "' alt='이미지 없음' style='border-radius: 30px'><br><div class='chatbot_url'></div></div></span>");
							}
							
							if(bubbles[b].data.contentTable !=null){
								$(".main_msgBox.receive:nth-last-child(2) .chatbot_url").append("<a href='" + bubbles[1].data.contentTable[0][0].data.data.action.data.url + "' target='_blank'>" + bubbles[b].data.cover.data.description + "</a>")
							}
																		 
						}else if(bubbles[b].data.cover.type == "text"){//멀티링크 답변이면
							
							if(bubbles[b] == bubbles[0]){
								$(".main_chatbot_box").append("<div class='main_msgBox receive'><span id='in'><div id='main_chatbot'><div><img src='/images/mainChatbot_gingerbread_man.png'></div><div class='main_chatbot_name'>잡동산</div></div><div id='main_chatbot_text'>" + 
															bubbles[b].data.cover.data.description + "</div></span>");
							}else{
								$(".main_chatbot_box").append("<div class='main_msgBox receive'><span id='in'><div id='main_chatbot'></div><div id='main_chatbot_text'>" + 
															bubbles[b].data.cover.data.description + "</div></span>");
							}
							
							if(bubbles[b].data.contentTable !=null){
								$(".main_msgBox.receive:nth-last-child(2) .chatbot_url").append("<a href='" + bubbles[1].data.contentTable[0][0].data.data.action.data.url + "' target='_blank'>" + bubbles[0].data.cover.data.description + "</a>")
							}
						}
						
						// 이미지 / 멀티링크 답변 공통 (contentTable 포함)
					/*	for(var ct in bubbles[b].data.contentTable){
							var ct_data = bubbles[ct].data.contentTable[ct][ct];
							for(var ct_d in ct_data){
								$(".main_chatbot_box").append
								("<a href='"+ct_data[ct_d].data.data.action.data.url+"' target='_blank'>" + 
									ct_data[ct_d].data.data.action.data.url+ "</a>");
						    }
					    } */ // contentTable for문 끝
				    }//template 끝
				}//bubbles for문 종료
				
				// 스크롤해서 올리기
				$(".main_chatbot_box").scrollTop($(".main_chatbot_box").prop("scrollHeight"));
				
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
 	}
 	
});