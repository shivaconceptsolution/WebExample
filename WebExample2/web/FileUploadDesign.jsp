<%-- 
    Document   : FileUploadDesign
    Created on : Dec 14, 2019, 5:21:44 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UploadSer" enctype="multipart/form-data" method="post">
            <input type="file" name="file" multiple="true" />
            <br>
            <br>
            <input type="submit" name="btnsubmit" value="Upload" />
            
            
        </form>
    </body>
</html>
