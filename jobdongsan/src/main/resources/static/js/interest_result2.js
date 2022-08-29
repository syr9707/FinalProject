/**
 * 
 */
 
 $(document).ready(function(){
 	
 	$('.char_explain_box:nth-child(3)').show();
	$('.char_explain_box:not(:nth-child(3))').hide();
	$('.next_btn:nth-child(4)').show();
	$('.next_btn:not(:nth-child(4))').hide();
 	
 	$('.char_profile:nth-child(1)').click(function(){
 		$('.char_explain_box:nth-child(3)').show();
 		$('.char_explain_box:not(:nth-child(3))').hide();
 		$('.next_btn:nth-child(4)').show();
		$('.next_btn:not(:nth-child(4))').hide();
 	});
 	
 	$('.char_profile:nth-child(2)').click(function(){
 		$('.char_explain_box:nth-child(5)').show();
 		$('.char_explain_box:not(:nth-child(5))').hide();
 		$('.next_btn:nth-child(6)').show();
		$('.next_btn:not(:nth-child(6))').hide();
 	});
 	
 	$('.char_profile:nth-child(3)').click(function(){
 		$('.char_explain_box:nth-child(7)').show();
 		$('.char_explain_box:not(:nth-child(7))').hide();
 		$('.next_btn:nth-child(8)').show();
		$('.next_btn:not(:nth-child(8))').hide();
 	});
 	
 	$('.char_profile:nth-child(4)').click(function(){
 		$('.char_explain_box:nth-child(9)').show();
 		$('.char_explain_box:not(:nth-child(9))').hide();
 		$('.next_btn:nth-child(10)').show();
		$('.next_btn:not(:nth-child(10))').hide();
 	});
 	
 	$('.char_profile:nth-child(5)').click(function(){
 		$('.char_explain_box:nth-child(11)').show();
 		$('.char_explain_box:not(:nth-child(11))').hide();
 		$('.next_btn:nth-child(12)').show();
		$('.next_btn:not(:nth-child(12))').hide();
 	});
 	
 	$('.char_profile:nth-child(6)').click(function(){
 		$('.char_explain_box:nth-child(13)').show();
 		$('.char_explain_box:not(:nth-child(13))').hide();
 		$('.next_btn:nth-child(14)').show();
		$('.next_btn:not(:nth-child(14))').hide();
 	});
 
 
 	$('.next_btn').click(function(){
 		location.href = "/interest_result3";
 	});
});    
    