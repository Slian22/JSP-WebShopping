<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<body>

<div class="page-title2">������</div>
<div class="main">
	<form action="addCategory_do.jsp" method="post" name="category">
		<table class="add_table">
			<tr>
				<td>��ƷID��</td>
				<td><input type="text" name="categoryId"></td>
			</tr>
			<tr>
				<td>�û�ID��</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>������</td>
				<td><input type="text" name="description"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="�ύ"  name="submit"></td>
			</tr>
		</table>
	</form>	
</div>
</body>
</html>
