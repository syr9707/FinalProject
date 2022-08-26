/**
 * job_index.js 
 */
 
 $(document).ready(function(){
 
 $(document).on('keydown', function (e) {
        if (e.keyCode == 13) return false;
    });
 	
 	$('ul.nav-tabs a').click(function (e) {      
 		e.preventDefault()      
 		$(this).tab('show')    
 	});
 	
 	
 	$('.job_searchbtn').click(function() {
 		
 		event.preventDefault();
 		
 		var formData = $('#jobSearchForm').serialize();
 		
 		$.ajax({
 			type:"post",
 			url:"jobsearchtest",
 			data:formData,
 			success:function(result) {
 				if($('#job_searchtext').val() == "") {
 					$('#jobSearchResultBox').hide();
 					$('.job_list').show();
 				}
 				else {
 					$('#jobSearchResultBox').show();
 					$('#jobSearchResultBox').html(result);
 					$('.job_list').hide();
 				}
 				
 			}, 
 			error:function() {
 				alert("전송 실패");
 			}
 			
 		});
 	});
 	
 });
 
 
 