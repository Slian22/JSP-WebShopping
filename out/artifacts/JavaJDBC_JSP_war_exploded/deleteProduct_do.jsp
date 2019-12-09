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
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<jsp:useBean id="productBean" class="product.ProductBean" scope="page"/>
<body>
<%
    productBean.deleteProduct((String)request.getParameter("productId"));
    response.sendRedirect("deleteProduct.jsp");
%>
</body>
</html>

