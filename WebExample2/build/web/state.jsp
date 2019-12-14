<%-- 
    Document   : state.jsp
    Created on : Dec 14, 2019, 5:09:44 AM
    Author     : Hp
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <select name="ddlstate" >
        <%
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest","root","");
            Statement st = conn.createStatement();
            ResultSet res = st.executeQuery("select * from state where countryid='"+request.getParameter("s")+"'");
            while(res.next())
            { %>
             
            <option value="<%= res.getString(1) %>"><%= res.getString(2) %></option>
                
           <% } %>
           
        </select>
                
    </body>
</html>
