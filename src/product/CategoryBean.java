package product;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
public class CategoryBean {
	private Connection con;
	//���췽����������ݿ�����ӡ�
	public CategoryBean()
	{
		this.con=DataBaseConnection.getConnection();
	}
	/**
	 *�������е���Ʒ��Ϣ��
	 *������Productֵ������ɵ�Collection
	 */
	/**
	 *���һ�����ʹ��Categoryֵ������Ϊ�����������������
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
	 *�������͵���Ϣ��ʹ��Categoryֵ������Ϊ�����������������
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
	 *ɾ��ĳ�����ָ������ID
	 */
	public void deleteCategory(String categoryId)throws Exception
	{
		Statement stmt=con.createStatement();
		stmt.execute("delete from category where catid='"+categoryId+"'");
	}
	
	 /*���ظ���categoryId����Ʒ����Ϣ��
	 *���ص���ֵ����
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
