<%--
  Created by IntelliJ IDEA.
  User: 单联天
  Date: 2019/12/8
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=GBK"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<body>
登录失败！请检查用户或者密码!<br>
<a href="index.jsp">返回登录</a>
</body>
</html>