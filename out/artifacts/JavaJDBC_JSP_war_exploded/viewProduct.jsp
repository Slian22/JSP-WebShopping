<%@ page contentType="text/html; charset=GBK" language="java" import="product.*,java.util.*,java.io.*" errorPage="error.jsp" %>
<%request.setCharacterEncoding("GBK"); %>
<html>
<head>
    <title>Untitled Document</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<jsp:useBean id="product" class="product.ProductBean" scope="page"/>
<body>

<div class="page-title2">�鿴���е���Ʒ</div>
<div class="main2">
    <table class="m_table" cellspacing="0">
        <tr class="table-header">
            <td>id</td><td>���</td><td>����</td><td>������</td><td>�۸�</td><td>����</td>
        </tr>
        <%
            Collection products=product.getAllProduct();
            Iterator it=products.iterator();
            int index = 0 ;
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
                out.println("</tr>");
            }
        %>
    </table>
    <a class="back" href="index_ViewProject.jsp">����</a>
</div>

</body>
</html>
