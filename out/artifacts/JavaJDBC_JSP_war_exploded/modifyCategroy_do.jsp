<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("GBK"); %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<jsp:useBean id="category" class="product.Category" scope="page">
<jsp:setProperty name="category" property="*"/>
</jsp:useBean>
<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<body>
<% 
categoryBean.modifyCategory(category);
request.setAttribute("msg", "success");
%>
<jsp:forward page="index_ViewProject.jsp"></jsp:forward>
</body>
</html>
