/**
 * 
 */
 
 $(document).ready(function(){

 	$('.char_profile:nth-child(1)').click(function(){
 		$('.char_explain:nth-child(1)').show();
 		$('.char_explain:not(:nth-child(1))').hide();
 		$('.char_map:nth-child(1)').show();
 		$('.char_map:not(:nth-child(1))').hide();
 		$('.char_explain span').css({"color": "#FF8E8E", "text-shadow": ""});
 	});
 	
 	$('.char_profile:nth-child(2)').click(function(){
 		$('.char_explain:nth-child(2)').show();
 		$('.char_explain:not(:nth-child(2))').hide();
 		$('.char_map:nth-child(2)').show();
 		$('.char_map:not(:nth-child(2))').hide();
 		$('.char_explain span').css({"color": "#89F578", "text-shadow": "1px 1px 3px black"});
 	});
 	
 	$('.char_profile:nth-child(3)').click(function(){
 		$('.char_explain:nth-child(3)').show();
 		$('.char_explain:not(:nth-child(3))').hide();
 		$('.char_map:nth-child(3)').show();
 		$('.char_map:not(:nth-child(3))').hide();
 		$('.char_explain span').css({"color": "#FBE28A", "text-shadow": "1px 1px 2px black"});
 	});
 	
 	$('.char_profile:nth-child(4)').click(function(){
 		$('.char_explain:nth-child(4)').show();
 		$('.char_explain:not(:nth-child(4))').hide();
 		$('.char_map:nth-child(4)').show();
 		$('.char_map:not(:nth-child(4))').hide();
 		$('.char_explain span').css({"color": "#33A4E3", "text-shadow": ""});
 	});
 	
 	$('.char_profile:nth-child(5)').click(function(){
 		$('.char_explain:nth-child(5)').show();
 		$('.char_explain:not(:nth-child(5))').hide();
 		$('.char_map:nth-child(5)').show();
 		$('.char_map:not(:nth-child(5))').hide();
 		$('.char_explain span').css({"color": "#F072F2", "text-shadow": ""});
 	});
 	
 	$('.char_profile:nth-child(6)').click(function(){
 		$('.char_explain:nth-child(6)').show();
 		$('.char_explain:not(:nth-child(6))').hide();
 		$('.char_map:nth-child(6)').show();
 		$('.char_map:not(:nth-child(6))').hide();
 		$('.char_explain span').css({"color": "#33E3CE", "text-shadow": ""});
 	});
 	
 	for(var i=1; i<=4; i++){
 	$('.map_count:nth-child('+ i +')').show();
 	}
 
 	$('.next_btn').click(function(){
 		parent.location.href = "/interest_my_promise";
 	});
});    
    