package product;

import java.sql.*;
import java.util.*;
import java.io.*;
//import com.jspdev.util.*;
//查看所有的商品分类
public class ViewCategory
{
	private Connection con;
	//公共方法，获得数据库的连接
	public ViewCategory()
	{
		this.con=DataBaseConnection.getConnection();
	}
	/**
	 *返回商品的所有分类，返回的Collection中包含Category值对象。
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
		//关闭连接，rst和stmt将自动关闭。
		con.close();
		return ret;
	}
			
}
	