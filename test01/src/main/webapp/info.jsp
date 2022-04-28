<%--
  Created by IntelliJ IDEA.
  User: marin
  Date: 2022/4/28
  Time: 12:03 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="Bean.userBean" scope="session"/>
    <jsp:setProperty name="user" property="name" param="name"/>
    <jsp:setProperty name="user" property="age" param="age"/>
    <jsp:setProperty name="user" property="number" param="number"/>
    <jsp:setProperty name="user" property="password" param="password"/>
    <jsp:setProperty name="user" property="sex" param="sex"/>
    <jsp:setProperty name="user" property="area" param="area" />
    <jsp:setProperty name="user" property="courses" param="courses"/>
    <jsp:setProperty name="user" property="introduction" param="introduction" />
<br/>
<jsp:getProperty name="user" property="name"/>
<br/>
<jsp:getProperty name="user" property="age"/>
<br/>
<jsp:getProperty name="user" property="number"/>
<br/>
<%
    if (user.isSex() == true) {
        out.println("男");
    } else {
        out.println("女");
    }
%>
<br/>
<jsp:getProperty name="user" property="area"/>
<br/>
<%
    String[] courses = user.getCourses();
    for (int i = 0; i < courses.length; i++) {
        out.println(courses[i]);
    }
%>
<br/>
<jsp:getProperty name="user" property="introduction"/>
<%
    session.setAttribute("user", user);
    response.sendRedirect("login.jsp");
%>
</body>
</html>