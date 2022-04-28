<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="Bean.userBean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="info.jsp">
    <span>用户名：</span>
    <input type="text" name="name" placeholder="用户名" />
    <br />
    <span>学号：</span>
    <input type="text" name="number"  placeholder="学号" />
    <br />
    <span>密码：</span>
    <input type="password" name="password" placeholder="密码" />
    <br />
    <span>性别：</span>
    <input type="radio" name="sex" value="true" placeholder="男"/>男
    <input type="radio" name="sex" value="false" placeholder="女"/>女
    <br/>
    <span>年龄：</span>
    <input type="text" name="age" placeholder="年龄" />
    <br />
    <span>籍贯：</span>
    <input type="text" name="area" placeholder="籍贯" />
    <br />
    <span>选修课：</span>
    <input type="checkbox" name="courses" value="算法分析" />算法分析
    <input type="checkbox" name="courses" value="计算机组成" />计算机组成
    <input type="checkbox" name="courses" value="计算机网络" />计算机网络
    <input type="checkbox" name="courses" value="软件建模" />软件建模
    <br />
    <span>个人简介：</span>
    <input type="textarea" name="introduction" placeholder="个人简介" />
    <br />
    <input type="submit" value="提交" />
</form>
</body>
</html>
