/**
 * job_detail.js 
 */
 
  $(document).ready(function(){
  
 	$('.job_star').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );
    
    $(window).scroll(function() {
		var hT = $('.job_chatbot').offset().top,
       		hH = $('.job_chatbot').outerHeight(),
       		wH = $(window).height(),
       		wS = $(this).scrollTop();
   		if (wS > (hT+hH-wH-300)){
	  		// 시작하자마자 웰컴 메시지 요청
       		if($('.job_num').text() == 80) {
       			callAjax2();
       		}else if($('.job_num').text() == 36){
       			callAjax();
       		}
       		
       		$(window).off('scroll');
   		}
	});
	
	// 음성으로 질문하기
	const record = document.getElementById("record");
	const stop = document.getElementById("stop");
	const soundClips = document.getElementById("sound_clips");
  
	const audioCtx = new(window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의
  
	if (navigator.mediaDevices) {
		var constraints = {
            audio: true
        }
        let chunks = [];

        navigator.mediaDevices.getUserMedia(constraints)
            .then(stream => {
                const  mediaRecorder = new MediaRecorder(stream);
          		
          		// [녹음] 버튼 클릭했을 때
                record.onclick = () => {
                    mediaRecorder.start();
                    record.style.background = "";
                    record.style.color = "";
                    record.style.filter = "opacity(0.5)";
                }
				
				//정지 버튼 클릭 시
                stop.onclick = () => {
                    mediaRecorder.stop();//녹음 정지
                    record.style.background = "";
                    record.style.color = "";
                    record.style.filter = "";
                }
                
                mediaRecorder.onstop = e => {
                    
                    const clipName = "voiceMsg";
                    
                    const clipContainer = document.createElement('article');
                    const a = document.createElement('a');
                   
                    clipContainer.appendChild(a);
                    soundClips.appendChild(clipContainer);

                    const blob = new Blob(chunks, {
                        'type': 'audio/mp3 codecs=opus'
                    }); 
                    
                    chunks = [];
                    const audioURL = URL.createObjectURL(blob);
                    a.href=audioURL;
                    a.href=audioURL;
                   
					fileUpload(blob, clipName);
                }

                mediaRecorder.ondataavailable = e => {
                    chunks.push(e.data)
                }
            })
            .catch(err => {
                console.log('The following error occurred: ' + err)
            })
	}
	
	// 서버에 파일을 업로드 하는 함수
	function fileUpload(blob, clipName) {
	
		// 음성 파일을 폼에 추가
		var formData = new FormData();
		formData.append("uploadFile", blob, clipName + ".mp3");
		
		// 녹음된 mp3 파일을 STT에게 전송하고 텍스트 반환  -> 텍스트를 챗봇 서버에게 전달
		$.ajax({
 			type:"post",
 			enctype: "multipart/form-data",
 			url:"/stt",
 			data: formData,
 			processData:false,
 			contentType:false,
			success:function(result){
				// chatBox에 받은 메시지 추가	
 				$('.job_chatbot_box').append('<div class="msgBox send"><div id="in"><div id="user_text">' + result + '</div></div></div>');

				// <input> 태그의 값을 받은 텍스트로 설정
				$('#message').val(result);
				// 챗봇에게 전달
				if($('.job_num').text() == 80) {
		   			callAjax2();
		   		}else if($('.job_num').text() == 36){
		   			callAjax();
		   		}
				
				$('#message').val('');
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
	}
	
	function callAjaxTTS(result){
 		$.ajax({
 			type: "post",
 			url: "/tts",
 			data:{"message": result},
 			dataType:"text",
 			success: function(result){
		 		$('#audio').attr('src', '/upload/' + result);
		 		$('#audio').attr('autoplay', 'autoplay');
 			},
 			error: function(){
 				alert("전송 실패");
 			}
 		});
	}
	
	function callAjaxTTS2(result){
 		$.ajax({
 			type: "post",
 			url: "/tts2",
 			data:{"message": result},
 			dataType:"text",
 			success: function(result){
		 		$('#audio').attr('src', '/upload/' + result);
		 		$('#audio').attr('autoplay', 'autoplay');
 			},
 			error: function(){
 				alert("전송 실패");
 			}
 		});
	}
	
	$('#job_chatForm').on('submit', function(){
 		// submit 이벤트 기본 기능 : 페이지 새로 고침
 		// 기본 기능 중단
 		event.preventDefault();
 		
 		if($('#message').val() == ""){
			alert("질문을 입력해주세요");
			$('#message').focus();
			return false;
		} 		
 		
 		// chatBox에 보낸 메시지 추가
		$('.job_chatbot_box').append('<div class="msgBox send"><div id="in"><div id="user_text">' + $('#message').val() + '</div></div></div>');
 		
 		if($('.job_num').text() == 80) {
   			callAjax2();
   		}else if($('.job_num').text() == 36){
   			callAjax();
   		}
 		
 		$('#message').val('');
 	}); // submit 끝
 	
 	// ajax() 부분을 별도의 함수로 분리
 	function callAjax(){
 		$.ajax({
 			type:"post",
 			url:"/jobChatbot",
 			data:{"message":$('#message').val()},
 			dataType:"text",
			success:function(result){
				// chatBox에 받은 메시지 추가	
 				$('.job_chatbot_box').append('<div class="msgBox receive"><div id="in"><div id="chatbot"><div><img src="'+$(".job_img img").attr("src")+'"></div><div>'+$('.job_name').text()+'</div></div><div id="chatbot_text">' + result + '</div></div></div>');
				
				// 스크롤해서 올리기 : 맨 아래 답변이 밑으로 내려가지 않도록 맨 아래 위치에 고정
				$('.job_chatbot_box').scrollTop($('.job_chatbot_box').prop("scrollHeight"));
				
				// 챗봇으로부터 텍스트 답변 받음 -> 음성 변환 (TTS)
				callAjaxTTS(result); // result를 callAjaxTTS() 함수에게 전달
				// callAjaxTTS() 함수는 TTS 요청해서 음성파일 받고, audio play, audio 안보이게
				
				$('#message').val("");
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
 	}
 	
 	function callAjax2(){
 		$.ajax({
 			type:"post",
 			url:"/doctorChatbot",
 			data:{"message":$('#message').val()},
 			dataType:"text",
			success:function(result){
				// chatBox에 받은 메시지 추가	
 				$('.job_chatbot_box').append('<div class="msgBox receive"><div id="in"><div id="chatbot"><div><img src="'+$(".job_img img").attr("src")+'"></div><div>'+$('.job_name').text()+'</div></div><div id="chatbot_text">' + result + '</div></div></div>');
				
				// 스크롤해서 올리기 : 맨 아래 답변이 밑으로 내려가지 않도록 맨 아래 위치에 고정
				$('.job_chatbot_box').scrollTop($('.job_chatbot_box').prop("scrollHeight"));
				
				// 챗봇으로부터 텍스트 답변 받음 -> 음성 변환 (TTS)
				callAjaxTTS2(result); // result를 callAjaxTTS() 함수에게 전달
				// callAjaxTTS() 함수는 TTS 요청해서 음성파일 받고, audio play, audio 안보이게
				
				$('#message').val("");
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
 	}
     
    
    
 });
 
 