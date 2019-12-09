//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package myservlet.control;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HandleExit extends HttpServlet {
    public HandleExit() {
    }

    public void init(ServletConfig var1) throws ServletException {
        super.init(var1);
    }

    public void doPost(HttpServletRequest var1, HttpServletResponse var2) throws ServletException, IOException {
        HttpSession var3 = var1.getSession(true);
        var3.invalidate();
        var2.sendRedirect("index.jsp");
    }

    public void doGet(HttpServletRequest var1, HttpServletResponse var2) throws ServletException, IOException {
        this.doPost(var1, var2);
    }
}
