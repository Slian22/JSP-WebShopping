<%--
  Created by IntelliJ IDEA.
  User: 单联天
  Date: 2019/11/29
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
    <title>首页面</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <style>
        body{
            background-image:url(image/bg-admin-main.jpg);
            background-attachment: fixed;
        }
    </style>
</head>

<body>
<div class="page-title">商品/订单管理</div>

<div class="main">


    <div class="module">
        <a href="addProduct.jsp">增加商品</a>
        <a href="deleteProduct.jsp">删除商品</a>
        <a href="modifyProduct.jsp">更改商品信息</a>
        <a href="viewProduct.jsp">查看所有商品</a>
    </div>

    <div class="module">
        <a href="addCategory.jsp">增加订单</a>
        <a href="deleteCategory.jsp">删除订单</a>
        <a href="modifyCategory.jsp">更改订单信息</a>
        <a href="exitServlet">退出</a>
    </div>

</div>

<%
    String msg = (String)session.getAttribute("msg") ;
    if(null!=msg&&msg.equals("success")){
%>
<script>alert('成功!')</script>
<%
        session.setAttribute("msg", null);
    }
%>
</body>
</html>
