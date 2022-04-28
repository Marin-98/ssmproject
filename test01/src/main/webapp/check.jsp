<%--
  Created by IntelliJ IDEA.
  User: marin
  Date: 2022/4/28
  Time: 12:31 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="Bean.userBean" scope="session"/>
<%
    String name = (String)request.getParameter("name");
    String password = (String)request.getParameter("password");
    out.println("name:"+name);
    out.println("password:"+password);
    if (name != null && password != null) {
        if (user.getName().equals(name)&&user.getPassword().equals(password)) {
            out.println("登录成功");
        } else {
            out.println("登录失败");
        }
    }

%>
</body>
</html>
