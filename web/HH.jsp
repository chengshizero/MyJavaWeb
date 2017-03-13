<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>這是HTML網頁</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
	
        <h1>請輸入資料：</h1>
        <form action="datas/PP.jsp" method="post">
            <p>帳號：<input type="text" name="acct" placeholder="請輸入帳號" title="帳號" required="required" /></p>
            <p>密碼：<input type="password" name="pass"  placeholder="請輸入密碼" title="密碼" /></p>
            <p>身份證字號：<input type="text" name="idd"  placeholder="請輸入身份證字號" title="請輸入中華民國的身份證字號" required="required" pattern="[A-Za-z][12]\d{8}" /></p>            
            <p>電子郵件：<input type="email" name="mail" required="required" /></p>
            <p><input type="submit" value="送出">&nbsp;&nbsp;<input type="reset" value="重置"></p>
        </form>
    </body>
</html>
