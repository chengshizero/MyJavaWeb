<%            
    String aa=request.getParameter("acct");
    
    byte[]  bb=aa.getBytes("iso-8859-1");
    String newaa=new String(bb,"utf-8");
    
    String zz=request.getParameter("pass");        
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>接收頁面</title>
    </head>
    <body>
        
        <h1>接收頁面</h1>
       <p>帳號：<%=newaa%></p>
        <p>密碼：<%=zz%></p>
        <p>身份證字號：<%=request.getParameter("idd")%></p>            
        <p>電子郵件：<%
            String dd=request.getParameter("mail");
            out.print(dd);
        %></p>
        
    </body>
</html>
