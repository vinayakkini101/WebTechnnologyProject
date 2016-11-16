$(document).ready(function() {
	$("#tablediv").hide();
     $("#cust").click(function(event){
           $.post('./DisplayCustomerWTServlet.do',function(responseJson) {
                   var data="";
        	   if(responseJson!=null){
            	   $("#countrytable").find("tr:gt(0)").remove();
            	   var table = $("#countrytable");
	               $.each(responseJson, function(key,value) { 
                         /*     
                           data += "<tr><td>"+value['firstName']+"</td>";
                         data += "<td>"+value['lastName']+"</td>";
                           data += "<td>"+value['contact']+"</td>";
                           data += "<td>"+value['email']+"</td></tr>";
                           
                          */
                           $('#tablediv').append('<tr><td>'+value['firstName']+'</td>');
                           $('#tablediv').append('<td>'+value['lastName']+'</td>');
                            $('#tablediv').append('<td>'+value['contact']+'</td>');
                             $('#tablediv').append('<td>'+value['email']+'</td></tr>');
                            
	               });
                      $("#table-content").html(data);
                      console.log(data);
                }
            
            });
            $("#tablediv").show();          
	 });      
});




$(document).ready(function() {
	$("#tablediv1").hide();
     $("#car").click(function(event){
           $.post('./DisplayCarWTServlet.do',function(responseJson) {
                   var data="";
        	   if(responseJson!=null){
            	   $("#countrytable1").find("tr:gt(0)").remove();
            	   var table1 = $("#countrytable1");
	               $.each(responseJson, function(key,value) { 
                 
                           $('#tablediv1').append('<tr><td>'+value['carid']+'</td>');
                           $('#tablediv1').append('<td>'+value['type']+'</td>');
                            $('#tablediv1').append('<td>'+value['brand']+'</td>');
                             $('#tablediv1').append('<td>'+value['model']+'</td></tr>');
                             $('#tablediv1').append('<td>'+value['count']+'</td>');
                            
	               });
                      $("#table-content1").html(data);
                      console.log(data);
                }
            
            });
            $("#tablediv1").show();          
	 });      
});




