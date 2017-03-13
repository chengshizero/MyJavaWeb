
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>資料連接</h1>
        <%
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                String ss="jdbc:sqlserver://localhost;user=SQLAdmin;password=1234;database=中文北風;";
                Connection conn = DriverManager.getConnection(ss);  
                
                Statement cmd=conn.createStatement();
                //String sql="CREATE TABLE TTT(欄1 INT,欄2 NCHAR(10),欄3 DATE)";
                String sql="INSERT INTO 產品資料(產品編號,產品,供應商編號,類別編號,單位數量,單價,庫存量,不再銷售) VALUES(101,'大亨堡',15,3,'每箱48包',35,10,0)";
                cmd.execute(sql);
                
                out.println("<h3 style='color:blue;'>命令執行成功</h3>");
                
                cmd.close();
                conn.close();                
                
            } catch(Exception ex) {
                out.println("<h3 style='color:red;'>"+ex.getMessage()+"</h3>");
            }
        %>
    </body>
</html>
