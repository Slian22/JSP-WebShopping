<%--
  Created by IntelliJ IDEA.
  User: ������
  Date: 2019/11/29
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
    <title>��ҳ��</title>
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
<div class="page-title">��Ʒ/��������</div>

<div class="main">


    <div class="module">
        <a href="addProduct.jsp">������Ʒ</a>
        <a href="deleteProduct.jsp">ɾ����Ʒ</a>
        <a href="modifyProduct.jsp">������Ʒ��Ϣ</a>
        <a href="viewProduct.jsp">�鿴������Ʒ</a>
    </div>

    <div class="module">
        <a href="addCategory.jsp">���Ӷ���</a>
        <a href="deleteCategory.jsp">ɾ������</a>
        <a href="modifyCategory.jsp">���Ķ�����Ϣ</a>
        <a href="exitServlet">�˳�</a>
    </div>

</div>

<%
    String msg = (String)session.getAttribute("msg") ;
    if(null!=msg&&msg.equals("success")){
%>
<script>alert('�ɹ�!')</script>
<%
        session.setAttribute("msg", null);
    }
%>
</body>
</html>
