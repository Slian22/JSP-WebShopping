<%--
  Created by IntelliJ IDEA.
  User: ������
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
<title>��¼����</title>
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
    �û���:<input type="text" name="username"><br>
    ����:<input type="password" name="password"><br>
    <br><br><br>
    <input type="submit" value="��½">
    <input type="reset" value="����"><br>
</form>

</body>
</html>