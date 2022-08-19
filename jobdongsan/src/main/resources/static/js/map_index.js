/**
 * 
 */
 
$(document).ready(function(){

     $('#map_img_tap').hover(
        function(){
            $(this).addClass('animate__animated animate__pulse');
        },
        function(){
            $(this).removeClass('animate__animated animate__pulse');
        }
    );
	
	$('#CD11').on("click", function(){
		$('#list_seoul').slideToggle("fast");
	});
	
	$('#CD42').on("click", function(){
		$('#list_gangwondo').slideToggle("fast");
	});
	
	$('#CD41').on("click", function(){
		$('#list_gyeonggido').slideToggle("fast");
	});
	
	$('#CD44').on("click", function(){
		$('#list_chungcheongnamdo').slideToggle("fast");
	});
	
	$('#CD43').on("click", function(){
		$('#list_chungcheongbukdo').slideToggle("fast");
	});
	
	$('#CD45').on("click", function(){
		$('#list_jeollabukdo').slideToggle("fast");
	});
	
	$('#CD46').on("click", function(){
		$('#list_jeollanamdo').slideToggle("fast");
	});
	
	$('#CD47').on("click", function(){
		$('#list_gyeongsangbukdo').slideToggle("fast");
	});
	
	$('#CD48').on("click", function(){
		$('#list_gyeongsangnamdo').slideToggle("fast");
	});
	
});