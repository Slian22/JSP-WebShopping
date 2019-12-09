package product;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
public class CategoryBean {
	private Connection con;
	//构造方法，获得数据库的连接。
	public CategoryBean()
	{
		this.con=DataBaseConnection.getConnection();
	}
	/**
	 *搜索所有的商品信息。
	 *返回由Product值对象组成的Collection
	 */
	/**
	 *添加一个类别，使用Category值对象作为参数传给这个方法。
	 */
	public void addCategory(Category category)throws Exception
	{
		
		PreparedStatement pstmt=con.prepareStatement("insert into category values(?,?,?)");
		pstmt.setString(1,category.getCategoryId());
		pstmt.setString(2,category.getName());
		pstmt.setString(3,category.getDescription());
		pstmt.execute();
		
	}
	
	/**
	 *更改类型的信息，使用Category值对象作为参数传给这个方法。
	 */
	public void modifyCategory(Category category)throws Exception
	{
		
		PreparedStatement pstmt=con.prepareStatement("update category set catid=?,nam=?, descn=? where catid=?");
		pstmt.setString(1,category.getCategoryId());
		pstmt.setString(2,category.getName());
		pstmt.setString(3,category.getDescription());
		pstmt.setString(4,category.getCategoryId());
		pstmt.execute();		
	}
	
	/**
	 *删除某个类别，指定类别的ID
	 */
	public void deleteCategory(String categoryId)throws Exception
	{
		Statement stmt=con.createStatement();
		stmt.execute("delete from category where catid='"+categoryId+"'");
	}
	
	 /*返回给定categoryId的商品的信息，
	 *返回的是值对象
	 */
	public Category getCategroyInfo(String categoryId)throws Exception
	{
		
		Statement stmt=con.createStatement();
		ResultSet rst=stmt.executeQuery("select * from category where catid='"+categoryId+"'");
		Category category=null;
		while(rst.next())
		{
			category=new Category();
			category.setCategoryId(rst.getString("catid"));
			category.setName(rst.getString("nam"));
			category.setDescription(rst.getString("descn"));
					}
		return category;
	}	

}
