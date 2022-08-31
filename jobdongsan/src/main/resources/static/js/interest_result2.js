/**
 * 
 */
 
 $(document).ready(function(){
 
 	// 캐릭터마다 누를때 설명 박스 변경 
 	$('.char_profile:nth-child(1)').click(function(){
 		$('.char_explain_box:nth-child(3)').show();
 		$('.char_explain_box:not(:nth-child(3))').hide();
 		$('.next_btn:nth-child(4)').show();
		$('.next_btn:not(:nth-child(4))').hide();
		$('.char_job_box span').css({"color": "#FF8E8E", "text-shadow": ""});
		$('.next_btn span').css({"color": "#FF8E8E", "text-shadow": ""});
 	});
 	
 	$('.char_profile:nth-child(2)').click(function(){
 		$('.char_explain_box:nth-child(5)').show();
 		$('.char_explain_box:not(:nth-child(5))').hide();
 		$('.next_btn:nth-child(6)').show();
		$('.next_btn:not(:nth-child(6))').hide();
		$('.char_job_box span').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
		$('.next_btn span').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
 	});
 	
 	$('.char_profile:nth-child(3)').click(function(){
 		$('.char_explain_box:nth-child(7)').show();
 		$('.char_explain_box:not(:nth-child(7))').hide();
 		$('.next_btn:nth-child(8)').show();
		$('.next_btn:not(:nth-child(8))').hide();
		$('.char_job_box span').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
		$('.next_btn span').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
 	});
 	
 	$('.char_profile:nth-child(4)').click(function(){
 		$('.char_explain_box:nth-child(9)').show();
 		$('.char_explain_box:not(:nth-child(9))').hide();
 		$('.next_btn:nth-child(10)').show();
		$('.next_btn:not(:nth-child(10))').hide();
		$('.char_job_box span').css({"color": "#33A4E3", "text-shadow": ""});
		$('.next_btn span').css({"color": "#33A4E3", "text-shadow": ""});
 	});
 	
 	$('.char_profile:nth-child(5)').click(function(){
 		$('.char_explain_box:nth-child(11)').show();
 		$('.char_explain_box:not(:nth-child(11))').hide();
 		$('.next_btn:nth-child(12)').show();
		$('.next_btn:not(:nth-child(12))').hide();
		$('.char_job_box span').css({"color": "#F072F2", "text-shadow": ""});
		$('.next_btn span').css({"color": "#F072F2", "text-shadow": ""});
 	});
 	
 	$('.char_profile:nth-child(6)').click(function(){
 		$('.char_explain_box:nth-child(13)').show();
 		$('.char_explain_box:not(:nth-child(13))').hide();
 		$('.next_btn:nth-child(14)').show();
		$('.next_btn:not(:nth-child(14))').hide();
		$('.char_job_box span').css({"color": "#33E3CE", "text-shadow": ""});
		$('.next_btn span').css({"color": "#33E3CE", "text-shadow": ""});
 	});
 	
 	// 직업 보이기
 	for(var i=1; i<=5; i++){
 	$('.job_count:nth-child('+ i +')').show();
 	}
 
 	$('.next_btn').click(function(){
 		location.href = "/interest_result3";
 	});
});    
    