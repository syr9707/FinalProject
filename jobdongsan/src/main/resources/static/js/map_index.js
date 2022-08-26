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
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_seoul");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD42').on("click", function(){
		$('#list_gangwondo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gangwondo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD41').on("click", function(){
		$('#list_gyeonggido').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gyeonggido");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD44').on("click", function(){
		$('#list_chungcheongnamdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_chungcheongnamdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD43').on("click", function(){
		$('#list_chungcheongbukdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_chungcheongbukdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD45').on("click", function(){
		$('#list_jeollabukdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_jeollabukdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD46').on("click", function(){
		$('#list_jeollanamdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_jeollanamdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD47').on("click", function(){
		$('#list_gyeongsangbukdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gyeongsangbukdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD48').on("click", function(){
		$('#list_gyeongsangnamdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gyeongsangnamdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD50').on("click", function(){
		$('#list_jejudo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_jejudo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	//$('body').on('click', function(e){
	//	var $tgPoint = $(e.target);
	//	var $popCallBtn = $tgPoint.hasClass('#CD50')
	//	var $popArea = $tgPoint.hasClass('#list_jejudo')	
	//	if ( !$popCallBtn && !$popArea ) {
	//		$('#list_jejudo').removeClass('view');
	//		}		
	//	});
	
});