<%@page contentType="text/html" pageEncoding="UTF-8"%>

  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>認證結果</title>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
  
    <%
 String rand = (String)session.getAttribute("rand");
 String input = request.getParameter("insrand");
%>
<br>
  <%
    if (rand.equals(input)) {
  %>
    <font color=green>輸入相同，認證成功！</font>
  <%
    } else {
  %>
    <font color=red>輸入不同，認證失敗！</font>
  <%
    }
  %> 
<%
    String nn=request.getParameter("acct");
    String pp=request.getParameter("pass");
    
    
    if(nn.equalsIgnoreCase("qwert") && pp.equals("ABCD1234")){
        response.sendRedirect("../MM.jsp");
    } else {
      response.sendRedirect("LoginFail.html");
    }
%> 