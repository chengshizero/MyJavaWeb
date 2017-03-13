<%
    String nn=request.getParameter("acct");
    String pp=request.getParameter("pass");
    
    if(nn.equalsIgnoreCase("qwert") && pp.equals("ABCD1234")){
        response.sendRedirect("LoginSuccess.jsp");
    } else {
      response.sendRedirect("LoginFail.html");
    }
%>