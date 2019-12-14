<%-- 
    Document   : search.jsp
    Created on : Dec 13, 2019, 5:02:06 AM
    Author     : Hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String data = request.getParameter("q")+"%";
          Class.forName("com.mysql.jdbc.Driver"); //return Class object and it is used to call predefine method forName which is used to register driver
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javatest","root","");
          Statement st = con.createStatement();
          ResultSet x = st.executeQuery("select * from emp where empname like '"+data+"'");
          while(x.next())
          {
             out.print(x.getString(1)+" "+x.getString(2)+" "+x.getString(3));
          }
        
        %>
                
    </body>
</html>
