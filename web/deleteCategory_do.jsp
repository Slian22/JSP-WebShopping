<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("GBK"); %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<body>
<% 
categoryBean.deleteCategory((String)request.getParameter("categoryId"));
response.sendRedirect("deleteCategory.jsp");
%>
</body>
</html>