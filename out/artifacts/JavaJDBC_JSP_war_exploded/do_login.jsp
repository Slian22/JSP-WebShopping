<%--
  Created by IntelliJ IDEA.
  User: ������
  Date: 2019/11/29
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<%
    String path = request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username==null||"".equals(username.trim())||password==null||"".equals(password.trim())){
        //out.write("�û��������벻��Ϊ�գ�");
        System.out.println("�û��������벻��Ϊ�գ�");
        response.sendRedirect("login.jsp");
        return;
        //request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    boolean isValid = false;
    Connection con = null;// ����һ�����ݿ�����
    PreparedStatement pre = null;// ����Ԥ����������һ�㶼�������������Statement
    ResultSet result = null;// ����һ�����������
    try
    {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");// ����Oracle��������
        //System.out.println("��ʼ�����������ݿ⣡");
        String url = "jdbc:sqlserver://localhost:1433; DatabaseName=E-Shop";// 127.0.0.1�Ǳ�����ַ��orcl��Oracle��Ĭ�����ݿ���
        String user = "sa";// �û���,ϵͳĬ�ϵ��˻���
        String pwd = "123456";// �㰲װʱѡ���õ�����
        con = DriverManager.getConnection(url, user, pwd);// ��ȡ����
        // System.out.println("���ӳɹ���");
        String sql = "select * from [user] where logname=? and password=?";// Ԥ������䣬�������������
        pre = con.prepareStatement(sql);// ʵ����Ԥ�������
        pre.setString(1, username);// ���ò�����ǰ���1��ʾ�����������������Ǳ�������������
        pre.setString(2, password);// ���ò�����ǰ���1��ʾ�����������������Ǳ�������������
        result = pre.executeQuery();// ִ�в�ѯ��ע�������в���Ҫ�ټӲ���
        if (result.next()){
            isValid = true;
        }
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        try
        {
            // ��һ������ļ�������رգ���Ϊ���رյĻ���Ӱ�����ܡ�����ռ����Դ
            // ע��رյ�˳�����ʹ�õ����ȹر�
            if (result != null)
                result.close();
            if (pre != null)
                pre.close();
            if (con != null)
                con.close();
            //System.out.println("���ݿ������ѹرգ�");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    if(isValid){
        System.out.println("��¼�ɹ���");
        session.setAttribute("username", username);
        response.sendRedirect("index_ViewProject.jsp");
        return;
    }else{
        System.out.println("��¼ʧ�ܣ�");
    }
%>
