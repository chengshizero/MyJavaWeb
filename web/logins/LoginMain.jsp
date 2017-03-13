<%-- 
    Document   : LoginMain
    Created on : 2016/9/29, 下午 02:01:21
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>會員登入</title>
    </head>
    <body>
        <div style="width: 400px; margin-left: auto; margin-right: auto;">
        <form action="ValidLoginProcess.jsp" method="post">
            <%@include file="../tools/LoginPanel.jsp" %>
        </form>        
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <%@include  file="../tools/PageFooter_Info.jsp" %>      
        </div>
    </body>
</html>
