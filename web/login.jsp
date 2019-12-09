<%--
  Created by IntelliJ IDEA.
  User: 单联天
  Date: 2019/11/24
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HEAD><%@ include file="head.txt" %></HEAD>
<title>登录界面</title>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>User Login Page</title>
</head>
<body>
<hr><br>Welcome to this <font color="green">Login Page</font>!<br>
<form action="do_login.jsp" method="post">
    <br>
    <h1>Please input your message:</h1><br>
    用户名:<input type="text" name="username"><br>
    密码:<input type="password" name="password"><br>
    <br><br><br>
    <input type="submit" value="登陆">
    <input type="reset" value="重置"><br>
</form>

</body>
</html>