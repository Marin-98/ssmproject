<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        您的姓名：
        <% out.println(request.getParameter("name")); %>
        <br>
        您的性别：<% out.println(request.getParameter("sex")); %>
        <br>
        您喜欢的歌手:
        <%
            String[] s = request.getParameterValues("singer");
            for (int i = 0; i < s.length; i++) {
                out.print(s[i] + " ");
            }
        %>
        <br>
        提交的值：<% out.println("这是隐藏信息"); %>
    </body>
    </html>