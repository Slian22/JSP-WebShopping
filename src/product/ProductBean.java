package product;

import java.sql.*;
import java.util.*;
import java.io.*;
//import com.jspdev.util.*;
/**
 *ProductBean包含和Product表相关的操作
 */
public class ProductBean
{
    private Connection con;
    //构造方法，获得数据库的连接。
    public ProductBean()
    {
        this.con=DataBaseConnection.getConnection();
    }
    /**
     *搜索所有的商品信息。
     *返回由Product值对象组成的Collection
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
     *添加一个商品，使用Product值对象作为参数传给这个方法。
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
     *更改商品的信息，使用Product值对象作为参数传给这个方法。
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
     *删除某个个商品，指定商品的ID
     */
    public void deleteProduct(String productId)throws Exception
    {
        Statement stmt=con.createStatement();
        stmt.execute("delete from Products where productid='"+productId+"'");
    }

    /**
     *返回给定ProductId的商品的信息，
     *返回的是值对象
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
