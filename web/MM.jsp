
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SqlserverTest</title>
    </head>
    <body>
       <h1>請輸入資料：</h1>
        <h1>請輸入查詢價格資料：</h1>
        <form action="datas/Data3.jsp" method="post">
            <p>價格：<input type="text" name="price1" pattern="\d{0,4}" placeholder="請輸入最低價格" title="輸入0~1000的值" required="required" />
                ～<input type="text" name="price2" pattern="\d{0,4}" placeholder="請輸入最高價格" title="輸入0~1000的值" required="required" />
            </p>                        
            <p><input type="submit" value="送出">&nbsp;&nbsp;<input type="reset" value="重置"></p>
        </form>
    </body>
</html>
