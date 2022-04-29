<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body style="background:lightblue">
        <form action="recerve.jsp">
            <h3>请输入下列信息：</h3>
            请输入你的姓名：
            <input type="text" name="name"/><br/>
            请选择性别：
            <input type="radio" name="sex" value="男"/>男
            <input type="radio" name="sex" value="女"/>女
            <br/>

            选择您喜欢的歌手：
            <input type="checkbox" name="singer" value="张杰"/>张杰
            <input type="checkbox" name="singer" value="李连杰"/>李连杰
            <input type="checkbox" name="singer" value="刘德华"/>刘德华
            <input type="checkbox" name="singer" value="王力宏"/>王力宏
            <br/>
            <input type="submit" name="button"/>
        </form>
    </body>
</html>