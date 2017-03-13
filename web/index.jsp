
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java首頁</title>
    </head>
    <body>
        <h1>我的第一個Java網站!</h1>
        
        <p>&nbsp;</p>

        <%@include  file="HH.jsp" %>        
        <%@include  file="MM.jsp" %>        
        <%@include  file="tools/PageFooter_Info.jsp" %>        
    </body>
</html>
