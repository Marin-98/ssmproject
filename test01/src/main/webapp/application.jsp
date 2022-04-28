<%@ page contentType="text/html;charset=gb2312" %>
<%
  int number = 0;
  Integer num =(Integer)application.getAttribute("num");
  if(num==null){
    application.setAttribute("num",new Integer(number));
  }
  else{
    number = num.intValue()+1;
    application.setAttribute("num",new Integer(number));
  }
%>
<html><head><title>application example</title></head>
<body>
<center><font color="#0000ff" size="5">application¶ÔÏóÊ¾Àı</font>
</center>
<hr>
