<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<jsp:useBean id="categoryBean" class="product.CategoryBean" scope="page"/>
<jsp:useBean id="category" class="product.ViewCategory" scope="page"></jsp:useBean>
<body>
<div class="page-title2">����һ������</div>
<div class="main2">
<table class="m_table" cellspacing="0">
<tr class="table-header">
<td>��ƷID</td><td>�û�ID</td><td>����</td><td>����</td>
</tr>
<%
Collection categorys=category.getAllCategory();
Iterator it=categorys.iterator();
int index = 0 ;
while(it.hasNext())
{
	String className = "tdStyle1" ;
	if(index++%2==0){
		className="tdStyle2";
	}
    Category temp=(Category)it.next();
	out.println("<tr class='"+className+"'>");
	out.println("<td>"+temp.getCategoryId()+"</td>");
	out.println("<td>"+temp.getName()+"</td>");
	out.println("<td>"+temp.getDescription()+"</td>");
	out.println("<td><a href='modifyCategory_pro.jsp?categoryId="+temp.getCategoryId()+"'>����</a>");
	out.println("</tr>");
}

%>
</table>
<a class="back" href="index_ViewProject.jsp">����</a>

</div>
</body>
</html>
