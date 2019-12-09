<%--
  Created by IntelliJ IDEA.
  User: 单联天
  Date: 2019/11/24
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<html>
<head>
    <title>Untitled Document</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<jsp:useBean id="product" class="product.ProductBean" scope="page"/>
<body>

<div class="page-title2">选择要更改的商品</div>
<div class="main2">
    <table class="m_table" cellspacing="0">
        <tr class="table-header">
            <td>id</td><td>类别</td><td>名称</td><td>出厂商</td><td>价格</td><td>描述</td><td>更改</td>
        </tr>

        <%

            Collection products=product.getAllProduct();
            Iterator it=products.iterator();
            int index =0 ;
            while(it.hasNext())
            {
                String className = "tdStyle1" ;
                if(index++%2==0){
                    className="tdStyle2";
                }
                Product temp=(Product)it.next();
                out.println("<tr class='"+className+"'>");
                out.println("<td>"+temp.getProductId()+"</td>");
                out.println("<td>"+temp.getCategoryId()+"</td>");
                try
                {
                    out.println("<td>"+temp.getName()+"</td>");
                    out.println("<td>"+temp.getProducer()+"</td>");
                    out.println("<td>"+temp.getPrice()+"</td>");
                    out.println("<td>"+temp.getDescription()+"</td>");
                }
                catch(Exception e)
                {}
                out.println("<td><a href='modifyProduct_pro.jsp?productId="+temp.getProductId()+"'>更改</a>");
                out.println("</tr>");
            }


        %>
    </table>
</div>
<a class="back" href="index_ViewProject.jsp">返回</a>
</body>
</html>
