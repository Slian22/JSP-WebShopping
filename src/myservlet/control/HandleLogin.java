package myservlet.control;
import mybean.data.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class HandleLogin extends HttpServlet{
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        }
        catch(Exception e){}
    }
    public String handleString(String s){
        try{  byte bb[]=s.getBytes("iso-8859-1");
            s=new String(bb);
        }
        catch(Exception ee){}
        return s;
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        Connection con;
        Statement sql;
        String logname=request.getParameter("logname").trim(),
                password=request.getParameter("password").trim();
        logname=handleString(logname);
        password=handleString(password);
         String URL = "jdbc:sqlserver://localhost:1433; DatabaseName=E-Shop";
         String USER = "sa";
         String Password = "123456";
        boolean boo=(logname.length()>0)&&(password.length()>0);
        try{
            con=DriverManager.getConnection(URL, USER, Password);
            String condition="select * from [dbo.user] where logname=? and password=?";
            PreparedStatement  sta=con.prepareStatement(condition);
            if(boo){
                sta.setString(1,logname);
                sta.setString(2,password);
                ResultSet rs=sta.executeQuery();
                boolean m=rs.next();
                if(m==true){
                    //调用登录成功的方法:
                    success(request,response,logname,password);
                    RequestDispatcher dispatcher=
                            request.getRequestDispatcher("login.jsp");//转发
                    dispatcher.forward(request,response);
                }
                else{
                    String backNews="您输入的用户名不存在，或密码不般配";
                    //调用登录失败的方法:
                    fail(request,response,logname,backNews);
                }
            }
            else{
                String backNews="请输入用户名和密码";
                fail(request,response,logname,backNews);
            }
            con.close();
        }
        catch(SQLException exp){
            String backNews=""+exp;
            fail(request,response,logname,backNews);
        }
    }
    public  void  doGet(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        doPost(request,response);
    }
    public void success(HttpServletRequest request,HttpServletResponse response
            ,String logname,String password) {
        Login loginBean=null;
        HttpSession session=request.getSession(true);
        try{  loginBean=(Login)session.getAttribute("loginBean");
            if(loginBean==null){
                loginBean=new Login();  //创建新的数据模型
                session.setAttribute("loginBean",loginBean);
                loginBean=(Login)session.getAttribute("loginBean");
            }
            String name =loginBean.getLogname();
            if(name.equals(logname)) {
                loginBean.setBackNews(logname+"已经登录了");
                loginBean.setLogname(logname);
            }
            else {  //数据模型存储新的登录用户
                loginBean.setBackNews(logname+"登录成功");
                loginBean.setLogname(logname);
            }
        }
        catch(Exception ee){
            loginBean=new Login();
            session.setAttribute("loginBean",loginBean);
            loginBean.setBackNews(logname+"登录成功");
            loginBean.setLogname(logname);
        }
    }
    public void fail(HttpServletRequest request,HttpServletResponse response
            ,String logname,String backNews) {
        response.setContentType("text/html;charset=GBK");
        try {
            PrintWriter out=response.getWriter();
            out.println("<html><body>");
            out.println("<h2>"+logname+"登录反馈结果<br>"+backNews+"</2>") ;
            out.println("返回登录页面或主页<br>");
            out.println("<a href =login.jsp>登录页面</a>");
            out.println("<br><a href =index.jsp>主页</a>");
            out.println("</body></html>");
        }
        catch(IOException exp){}
    }
}
