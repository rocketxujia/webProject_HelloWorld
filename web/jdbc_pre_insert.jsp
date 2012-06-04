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
    <title>使用预编译SQL语句（PreparedStatement）</title>
</head>
<body>
    <%
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost/testdb";
        String user = "root";
        String password = "xujia30501062";

        //
        String name = request.getParameter("username");
        String pw = request.getParameter("password");

        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, user, password);
            out.println("<h2> jdbc 的mysql连接测试成功 </h2>");

            //  创建SQL语句预编译
            Statement stmt = con.createStatement();
            String strSql = "insert into customer values(?,?)";
            PreparedStatement pStmt = con.prepareStatement(strSql);

            // 插入数据到数据库
            pStmt.setString(1, name);
            pStmt.setString(2,pw);
            int intTemp = pStmt.executeUpdate();
            if(intTemp!=0){
                out.print("<h3> 用户信息添加成功 </h3>");
            }else{
                out.print("<h3> 用户信息添加失败</h3>");
            }

            // 导出数据
            ResultSet rs = stmt.executeQuery( " SELECT username, pw FROM  customer "  );
            out.println( "<h2> 目前数据库中有用户如下：  </h2>");
            while ( rs.next() ){
                name = rs.getString("username");
                pw = rs.getString("pw");
                out.println( name + "/" + pw +"<br />");
            }

            // 关闭连接
            pStmt.close();
            rs.close();
            con.close();
        }catch (ClassNotFoundException e){
            out.println( "ClassNotFoundException: " + e.getMessage() );
        }catch ( SQLException e){
            out.println( "SQLException: " + e.getMessage() );
        }

    %>
</body>
</html>