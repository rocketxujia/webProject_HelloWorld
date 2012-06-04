<%--
  Created by IntelliJ IDEA.
  User: xujia01
  Date: 12-6-4
  Time: 下午3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <form action="jdbc_pre_insert.jsp">
        <div>
            <label>姓名：</label><input type="text" name="username" value="" placeholder="该项必填" required="true" />
            <label>密码：</label><input type="password" name="password" value="" placeholder="该项可为空" />
        </div>
        <input type="submit" value="提交" />
    </form>
</body>
</html>