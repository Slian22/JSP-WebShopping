package product;

import java.sql.*;
import java.util.*;
import java.io.*;
//import com.jspdev.util.*;
/**
 *ProductBean������Product����صĲ���
 */
public class ProductBean
{
    private Connection con;
    //���췽����������ݿ�����ӡ�
    public ProductBean()
    {
        this.con=DataBaseConnection.getConnection();
    }
    /**
     *�������е���Ʒ��Ϣ��
     *������Productֵ������ɵ�Collection
     */
    public Collection getAllProduct()throws Exception
    {
        Statement stmt=con.createStatement();
        ResultSet rst=stmt.executeQuery("select * from Products");
        Collection ret=new ArrayList();
        while(rst.next())
        {
            Product temp=new Product();
            temp.setProductId(rst.getString("productid"));
            temp.setCategoryId(rst.getString("category"));
            temp.setName(rst.getString("name"));
            temp.setDescription(rst.getString("descn"));
            temp.setProducer(rst.getString("producer"));
            temp.setPrice(rst.getFloat("price"));

            ret.add(temp);
        }
        con.close();
        return ret;
    }

    /**
     *���һ����Ʒ��ʹ��Productֵ������Ϊ�����������������
     */
    public void addProduct(Product product)throws Exception
    {

        PreparedStatement pstmt=con.prepareStatement("insert into Products values(?,?,?,?,?,?)");
        pstmt.setString(1,product.getProductId());
        pstmt.setString(2,product.getCategoryId());
        pstmt.setString(3,product.getName());
        pstmt.setString(4,product.getProducer());
        pstmt.setFloat(5,product.getPrice());
        pstmt.setString(6,product.getDescription());
        pstmt.execute();

    }

    /**
     *������Ʒ����Ϣ��ʹ��Productֵ������Ϊ�����������������
     */
    public void modifyProduct(Product product)throws Exception
    {

        PreparedStatement pstmt=con.prepareStatement("update Products set category=?,name=?, producer=?,price=?,descn=? where productid=?");
        pstmt.setString(1,product.getCategoryId());
        pstmt.setString(2,product.getName());
        pstmt.setString(3,product.getProducer());
        pstmt.setFloat(4,product.getPrice());
        pstmt.setString(5,product.getDescription());
        pstmt.setString(6,product.getProductId());
        pstmt.execute();
    }

    /**
     *ɾ��ĳ������Ʒ��ָ����Ʒ��ID
     */
    public void deleteProduct(String productId)throws Exception
    {
        Statement stmt=con.createStatement();
        stmt.execute("delete from Products where productid='"+productId+"'");
    }

    /**
     *���ظ���ProductId����Ʒ����Ϣ��
     *���ص���ֵ����
     */
    public Product getProductInfo(String productId)throws Exception
    {

        Statement stmt=con.createStatement();
        ResultSet rst=stmt.executeQuery("select * from Products where productid='"+productId+"'");
        Product product=null;
        while(rst.next())
        {
            product=new Product();
            product.setProductId(rst.getString("productid"));
            product.setCategoryId(rst.getString("category"));
            product.setName(rst.getString("name"));
            product.setDescription(rst.getString("descn"));
            product.setProducer(rst.getString("producer"));
            product.setPrice(rst.getFloat("price"));
        }
        return product;
    }
}
