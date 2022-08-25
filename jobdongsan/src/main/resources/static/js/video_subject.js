/**
 * video_subject.js 
 */
 
 $(document).ready(function(){
 	
 	$('.video_ctg_test, .video_ctg_test2').hover(function(){
		$(this).children('a').children('.video_thumbnail').css({'opacity':'0.5', 'border':'5px solid #05B4FF'});
 		$(this).children('a').children('.video_play').show();
	},function(){
		$(this).children('a').children('.video_thumbnail').css({'opacity':'1', 'border':'2px solid #9C9C9C'});
 		$(this).children('a').children('.video_play').hide();
 	});
 	
 	load('.video_ctg_test', '12');
 	
 	$('.video_ctg_btn').click(function(){
 		load('.video_ctg_test', '8', '.video_ctg_btn');
 	});
 	
 	function load(id, cnt, btn) {
 		var video_list = id + ".video_ctg_test:not(.active)";
 		var video_length = $(video_list).length;
 		var video_total_cnt;
 		
 		if(cnt < video_length) {
 			video_total_cnt = cnt;
 		}else {
 			video_total_cnt = video_length;
 			$('.video_ctg_btn').hide();
 		}
 		
 		$(video_list + ":lt(" + video_total_cnt + ")").addClass("active");
 	}
 });