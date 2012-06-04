<%--
  Created by IntelliJ IDEA.
  User: xujia01
  Date: 12-6-4
  Time: 下午2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>jdbc 的mysql连接测试</title>
</head>
<body>
    <%
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost/testdb";
        String user = "root";
        String password = "xujia30501062";

        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, user, password);
            out.println("<h2> jdbc 的mysql连接测试成功 </h2>");

            // 导出数据
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery( " SELECT username, pw FROM  customer "  );
            out.println( "<h2> 目前数据库中有用户如下：  </h2>");
            while ( rs.next() ){
                String name = rs.getString("username");
                String pw = rs.getString("pw");
                out.println( name + "/" + pw +"<br />");
            }
        }catch (ClassNotFoundException e){
            out.println( "ClassNotFoundException: " + e.getMessage() );
        }catch ( SQLException e){
            out.println( "SQLException: " + e.getMessage() );
        }




    %>
</body>
</html>