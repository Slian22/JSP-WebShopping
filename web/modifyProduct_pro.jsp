<%--
  Created by IntelliJ IDEA.
  User: ������
  Date: 2019/11/24
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<% request.setCharacterEncoding("GBK");%>
<html>
<head>
    <title>Untitled Document</title>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<jsp:useBean id="category" class="product.ViewCategory" scope="page"/>
<jsp:useBean id="productBean" class="product.ProductBean" scope="page"/>
<body>
<%
    String productId=request.getParameter("productId");
    Product product=productBean.getProductInfo(productId);
%>
<div class="page-title2">����һ����Ʒ</div>
<div class="main">
    <form action="modifyProduct_do.jsp" method="post">
        <table class="add_table" style="height:450px">
            <tr>
                <td>��ƷID��</td>
                <td><input type="text" name="productId" readonly="" value="<%=product.getProductId()%>"></td>
            </tr>
            <tr>
                <td>��Ʒ���ƣ�</td>
                <td><input type="text" name="name" value="<%=product.getName()%>"></td>
            </tr>
            <tr>
                <td>��Ʒ�۸�</td>
                <td><input type="text" name="price" value="<%=product.getPrice()%>"></td>
            </tr>
            <tr>
                <td>���̣�</td>
                <td><input type="text" name="producer" value="<%=product.getProducer()%>"></td>
            </tr>
            <tr>
                <td>������</td>
                <td><input type="text" name="description" value="<%=product.getDescription()%>"></td>
            </tr>
            <tr>
                <td>���</td>
                <td><input type="text" name="categoryId" value="<%=product.getCategoryId()%>">
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type=submit value=�ύ></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
