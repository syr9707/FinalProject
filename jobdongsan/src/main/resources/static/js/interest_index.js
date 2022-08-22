/**
 * 
 */
 
 $(document).ready(function(){ 
 	var Url2 = "http://localhost:8080/interest_index2"
 	
 	var Url3 = "http://localhost:8080/interest_index3"
 
	if(window.location.href == Url2){
		$('.inner_view_box').attr('src', "/interest_test2");
		$('html, body').animate({scrollTop: $('.interest_text').offset().top});	
	}else if(window.location.href == Url3){
		$('.inner_view_box').attr('src', "/interest_test3");
		$('html, body').animate({scrollTop: $('.interest_text').offset().top});
	}
	
	
});    
    