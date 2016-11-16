<%response.setHeader("Cache-Control", "no-cache, no-store , must-revalidate");
response.setHeader("Pragma", "no-cache");//Http 1.0
response.setDateHeader("Expires" ,0); //Proxies
%>