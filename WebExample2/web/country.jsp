<%-- 
    Document   : country
    Created on : Dec 14, 2019, 4:57:26 AM
    Author     : Hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
            function showstate(a)
            {
                
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange=function()
                {
                    document.getElementById("state").innerHTML=xmlhttp.responseText; 
                    
                }
                xmlhttp.open("POST","state.jsp?s="+a,true);
                xmlhttp.send();
            }
            
            
        </script>
    </head>
    <body>
        <select name="ddlcountry" onchange="showstate(this.value)">
        <%
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest","root","");
            Statement st = conn.createStatement();
            ResultSet res = st.executeQuery("select * from country");
            while(res.next())
            { %>
             
            <option value="<%= res.getString(1) %>"><%= res.getString(2) %></option>
                
           <% } %>
           
        </select>
           <br>
           <div id="state"></div>
    </body>
</html>
