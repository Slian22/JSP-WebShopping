package product;

import java.sql.*;
import java.util.*;
import java.io.*;
//import com.jspdev.util.*;
//�鿴���е���Ʒ����
public class ViewCategory
{
	private Connection con;
	//����������������ݿ������
	public ViewCategory()
	{
		this.con=DataBaseConnection.getConnection();
	}
	/**
	 *������Ʒ�����з��࣬���ص�Collection�а���Categoryֵ����
	 */
	public Collection getAllCategory()throws Exception
	{
		Statement stmt=con.createStatement();
		ResultSet rst=stmt.executeQuery("select * from category");
		Collection ret=new ArrayList();
		while(rst.next())
		{
			Category temp=new Category();
			temp.setCategoryId(rst.getString("catid"));
			temp.setDescription(rst.getString("descn"));
			temp.setName(rst.getString("nam"));
			ret.add(temp);
		}
		//�ر����ӣ�rst��stmt���Զ��رա�
		con.close();
		return ret;
	}
			
}
	