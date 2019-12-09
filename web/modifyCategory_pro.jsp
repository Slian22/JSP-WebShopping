<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<% request.setCharacterEncoding("GBK");%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>

<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<body>
<% 
String categoryId=request.getParameter("categoryId");
Category category=categoryBean.getCategroyInfo(categoryId);
%>
<div class="page-title2">更改一个订单</div>
<div class="main">
	<form action="modifyCategroy_do.jsp" method="post">
		<table class="add_table">
			<tr>
				<td>商品ID：</td>
				<td><input type="text" name="categoryId" readonly="" value="<%=category.getCategoryId()%>"></td>
			</tr>
			<tr>
				<td>新用户ID：</td>
				<td><input type="text" name="name" value="<%=category.getName() %>"></td>
			</tr>
			<tr>
				<td>新描述：</td>
				<td><input type="text" name="description" value="<%=category.getDescription() %>"></td>
			</tr>
			<tr><td colspan="2"><input type=submit value=提交></td></tr>
		</table>
	</form>
</div>
</body>
</html>
