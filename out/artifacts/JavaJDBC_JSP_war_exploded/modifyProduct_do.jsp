<%--
  Created by IntelliJ IDEA.
  User: 单联天
  Date: 2019/11/24
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("GBK"); %>
<html>
<head>
    <title>Untitled Document</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<jsp:useBean id="product" class="product.Product" scope="page">
    <jsp:setProperty name="product" property="*"/>
</jsp:useBean>
<jsp:useBean id="productBean" class="product.ProductBean" scope="page"/>
<body>
<%
    productBean.modifyProduct(product);
    request.setAttribute("msg", "success");
%>
<jsp:forward page="index_ViewProject.jsp"></jsp:forward>
</body>
</html>

