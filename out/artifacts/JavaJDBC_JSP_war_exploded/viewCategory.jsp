<%@ page contentType="text/html; charset=gb2312" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("gb2312"); %>
<html>
<head>
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<jsp:useBean id="category" class="product.ViewCategory" scope="page"/>
<body>
<div class="page-title2">查看所有的商品类别</div>
<div class="main2">
<table  class="m_table" cellspacing="0">
<tr class="table-header"><td>id</td><td>类别名</td><td>描述</td></tr>
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
	out.println("<td><a href='searchProductByCategory.jsp?category="+temp.getCategoryId()+"'>"+temp.getCategoryId()+"</a></td>");
	out.println("<td>"+temp.getName()+"</td>");
	out.println("<td>"+temp.getDescription()+"</td>");
	out.println("</tr>");
}

%>
</table>
<a class="back" href="index_ViewProject.jsp">返回</a>

</div>
</body>
</html>
