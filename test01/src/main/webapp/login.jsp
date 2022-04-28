<%--
  Created by IntelliJ IDEA.
  User: marin
  Date: 2022/4/28
  Time: 11:59 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="Bean.userBean" scope="session"/>
<form method="post" action="check.jsp">
    <table>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="name" value="<jsp:getProperty property="name" name="user"/>"/></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password" value="<jsp:getProperty property="password" name="user"/>"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="登录"/></td>
        </tr>
    </table>
    <jsp:setProperty name="user" property="name" param="name"/>
    <jsp:setProperty name="user" property="password" param="password"/>
</form>
</body>
</html>
