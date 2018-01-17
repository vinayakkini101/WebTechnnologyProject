$(document).ready(function() {
	$("#tablediv1").hide();
     $("#car").click(function(event){
           $.post('./DisplayCarWTServlet.do',function(responseJson) {
                   var data="";
        	   if(responseJson!=null){
            	   $("#countrytable1").find("tr:gt(0)").remove();
            	   var table1 = $("#countrytable1");
	               $.each(responseJson, function(key,value) { 
                           
                           
                           data = "<tr><td>"+value['carid']+"</td>";
                           data += "<td>"+value['type']+"</td>";
                           data += "<td>"+value['brand']+"</td>";
                           data += "<td>"+value['model']+"</td>";
                           data += "<td>"+value['count']+"</td></tr>";
                           /*
	               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
	                       rowNew.children().eq(0).text(value['firstName']); 
	                       rowNew.children().eq(1).text(value['lastName']); 
	                       rowNew.children().eq(2).text(value['contact']); 
	                       rowNew.children().eq(3).text(value['email']); 
//	                       rowNew.children().eq(4).text(value['']); 
	               //        rowNew.children().eq(5).text(value['capital']); 
	                       rowNew.appendTo(table1);
                            //   $("#tablediv").append('<h1>fafasgfsadgsg</h1>');*/
	               });
                       console.log(data);
                       $("#table-content1").html(data);
                }
            
            });
            $("#tablediv1").show();          
	 });      
});