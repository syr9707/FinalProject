/**
 * video_detail.js 
 */
 
 $(document).ready(function(){
  
 	$('.video_star').hover(
        function(){
            $(this).addClass('animate__animated animate__headShake');
        },
        function(){
            $(this).removeClass('animate__animated animate__headShake');
        }
    );
    
    $('.video_similar_detail').hover(function(){
		$(this).children('.video_thumbnail').css({'opacity':'0.5', 'border':'5px solid #05B4FF'});
 		$(this).children('.video_play').show();
	},function(){
		$(this).children('.video_thumbnail').css({'opacity':'1', 'border':'2px solid #9C9C9C'});
 		$(this).children('.video_play').hide();
 	});
    
    $('.video_similar_name').hover(function(){
    	$(this).prev().children('.video_thumbnail').css({'opacity':'0.5', 'border':'5px solid #05B4FF'});
    	$(this).prev().children('.video_play').show();
	},function(){
		$(this).prev().children('.video_thumbnail').css({'opacity':'1', 'border':'2px solid #9C9C9C'});
 		$(this).prev().children('.video_play').hide();
    });
    
    
    // 비디오 버튼 조작 ***************************
    var video = document.getElementById("video");
    var timeBar = document.getElementById("time_bar");
    
    // 플레이 버튼 클릭시
    $('.on_off_btn, .video_Thumbnail').click(function(){
    	if(video.paused == true){
    		video.play();
    		$('.video_Thumbnail').hide();
    	}else {
    		video.pause();
    	}
    });
    
    // 재생바 위치에 따른 변화
    time_bar.addEventListener("change", function() {
    	$('.video_Thumbnail').hide();
    	var time = video.duration * (time_bar.value / 100);
    	video.currentTime = time;
    });
    
    video.addEventListener("timeupdate", function() {
	  var value = (100 / video.duration) * video.currentTime;
	  setTime(video.currentTime);
	  
	  timeBar.value = value;
	});
	
    $('#time_bar').mousedown(function(){
    	video.pause();
    });
    
    $('#time_bar').mouseup(function(){
    	video.play();
    });
    
    // 볼륨버튼 조작
    $('.volume_bar').change(function(){
    	 video.volume = $(this).val();
    });
    
     // 전체화면 버튼 클릭시
    $('.fullscreen_btn').click(function(){
    	 if (video.requestFullscreen) {
			video.requestFullscreen();
	  	 }
    });
    
    
    function setTime(time) {
		var min = parseInt(time / 60);
		var sec = Math.round(time % 60);
		
		min = min.toString().length < 2 ? '0' + min : min;
		sec = sec.toString().length < 2 ? '0' + sec : sec;
	
		$('.video_time').text(`${min}:${sec} / ${parseInt(video.duration / 60)}:${Math.round(video.duration % 60)}`);
	}
 });