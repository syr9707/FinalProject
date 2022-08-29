/**
 * 
 */
 
 $(document).ready(function(){
 		
 	$('.char_explain:nth-child(1)').show();
	$('.char_explain:not(:nth-child(1))').hide();
 	
 	$('.char_profile:nth-child(1)').click(function(){
 		$('.char_explain:nth-child(1)').show();
 		$('.char_explain:not(:nth-child(1))').hide();
 	});
 	
 	$('.char_profile:nth-child(2)').click(function(){
 		$('.char_explain:nth-child(2)').show();
 		$('.char_explain:not(:nth-child(2))').hide();
 	});
 	
 	$('.char_profile:nth-child(3)').click(function(){
 		$('.char_explain:nth-child(3)').show();
 		$('.char_explain:not(:nth-child(3))').hide();
 	});
 	
 	$('.char_profile:nth-child(4)').click(function(){
 		$('.char_explain:nth-child(4)').show();
 		$('.char_explain:not(:nth-child(4))').hide();
 	});
 	
 	$('.char_profile:nth-child(5)').click(function(){
 		$('.char_explain:nth-child(5)').show();
 		$('.char_explain:not(:nth-child(5))').hide();
 	});
 	
 	$('.char_profile:nth-child(6)').click(function(){
 		$('.char_explain:nth-child(6)').show();
 		$('.char_explain:not(:nth-child(6))').hide();
 	});
 
 	$('.next_btn').click(function(){
 		parent.location.href = "/interest_my_promise";
 	});
});    
    