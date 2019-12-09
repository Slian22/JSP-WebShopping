package product;
import java.sql.*;
//连接数据库的工具类。
public class DataBaseConnection
{
    /**
     *一个静态方法，返回一个数据库的连接。
     *这样达到了对数据库连接统一控制的目的。
     */
    public static Connection getConnection()
    {
        Connection con=null;
        String CLASSFORNAME="com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String SERVANDDB="jdbc:sqlserver://localhost:1433; DatabaseName=E-Shop";
        String USER="sa";
        String PWD="123456";
        try
        {
            Class.forName(CLASSFORNAME);
            con = DriverManager.getConnection(SERVANDDB,USER,PWD);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}