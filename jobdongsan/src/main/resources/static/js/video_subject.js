/**
 * video_subject.js 
 */
 
 $(document).ready(function(){
 	
 	$('.video_ctg_test, .video_ctg_test2').hover(function(){
		$(this).children('a').children('.video_thumbnail').css({'opacity':'0.5', 'border':'5px solid #05B4FF'});
 		$(this).children('.video_play').show();
	},function(){
		$(this).children('a').children('.video_thumbnail').css({'opacity':'1', 'border':'2px solid #9C9C9C'});
 		$(this).children('.video_play').hide();
 	});
 	
 });