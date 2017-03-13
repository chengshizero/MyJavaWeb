
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>產品資料</title>
    </head>
    <body>
        <h1>產品資料頁面</h1>
        <%
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String ss="jdbc:sqlserver://localhost;user=SQLAdmin;password=1234;database=中文北風;";
            Connection conn = DriverManager.getConnection(ss);  
                
            Statement cmd=conn.createStatement();                        
            //String sql="SELECT 產品編號,產品,供應商編號,類別編號,單位數量,單價,庫存量 FROM 產品資料";
            String sql="SELECT 產品編號,產品,供應商編號,類別編號,單位數量,單價,庫存量 FROM 產品資料 WHERE 單價>=30 AND 單價<=60 ORDER BY 單價 DESC";
            ResultSet rs=cmd.executeQuery(sql);
            
            StringBuilder sb=new StringBuilder();
            
            //取得查詢結果相關資訊
            ResultSetMetaData rsmd=rs.getMetaData();            
            
            sb.append("<table style='width:800px;border:1px black solid;'>");
            
            //欄位
            sb.append("<tr>");
            for(int i=1;i<=rsmd.getColumnCount();i++) {
                sb.append("<td style='text-align:center;padding:10px;border:1px black solid;'>");
                sb.append(rsmd.getColumnName(i));
                sb.append("</td>");
            }
            sb.append("</tr>");
            
            //資料部份
            while(rs.next()) {
                sb.append("<tr>");
                for(int i=1;i<=rsmd.getColumnCount();i++) {
                    sb.append("<td style='text-align:center;padding:10px;border:1px black solid;'>");
                    sb.append(rs.getString(i));
                    sb.append("</td>");
                }                    
                sb.append("</tr>");
            }
            sb.append("</table>");
            
            rs.close();
            cmd.close();
            conn.close();   

            out.println(sb.toString());
        %>
    </body>
</html>
