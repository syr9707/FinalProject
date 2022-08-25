/**
 * job_index.js 
 */
 
 $(document).ready(function(){
 	
 	$('ul.nav-tabs a').click(function (e) {      
 		e.preventDefault()      
 		$(this).tab('show')    
 	});
 	
 	$('.job_searchbtn').on('submit', function() {
 	
 		event.preventDefault();
 		
 		
 		$.ajax({
            type: "post",
            url: "jobsearchtest",
            data:{"keyword": $('#job_searchtext').val()},
            dataType: "text",
            success: function(result){
                $('#jobSearchResultBox').empty();
                
                if(result == "") {
                	$('#jobSearchResultBox').append('검색 결과가 없습니다.<br>결과가 정확한지 확인해주세요.');
                }
                else {
                	for(var i = 0; i < result.length; i++) {
                		$('#jobSearchResultBox').append(result[i].jobName + ' ' + result[i].jobInfo + ' ' + result[i].jobImg + '<br>');
                	}
                }
                
            },
            error: function(){
            	alert("전송 실패");
            }
        });
 	 });
 });
 
 
 