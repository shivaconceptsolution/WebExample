<%-- 
    Document   : ajaxexample
    Created on : Dec 13, 2019, 4:57:12 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function showdata(a)
            {
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange=function()
                {
                    document.getElementById("result").innerHTML=xmlhttp.response;
                }
                xmlhttp.open("POST","search.jsp?q="+a,true);
                xmlhttp.send();
                
            }
            
        </script>
    </head>
    <body>
        <input type="text" onkeyup="showdata(this.value)"  />
        
        <br>
        
        <div id="result"></div>
    </body>
</html>
