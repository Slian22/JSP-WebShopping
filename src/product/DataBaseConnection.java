package product;
import java.sql.*;
//�������ݿ�Ĺ����ࡣ
public class DataBaseConnection
{
    /**
     *һ����̬����������һ�����ݿ�����ӡ�
     *�����ﵽ�˶����ݿ�����ͳһ���Ƶ�Ŀ�ġ�
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