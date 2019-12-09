package product;

import java.io.*;

public class Product implements Serializable {

    /* ˽���ֶ� */

    private String productId;
    private String categoryId;
    private String name;
    private String description;
    private String producer;
    private float price;

    /* JavaBean���Է��ʷ��� */

    public String getProductId() { return productId; }
    public void setProductId(String productId) { this.productId = productId.trim(); }

    public String getCategoryId() { return categoryId; }
    public void setCategoryId(String categoryId) { this.categoryId = categoryId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public void setProducer(String pro){this.producer=pro;}
    public String getProducer(){return this.producer;}

    public  void setPrice(float price){this.price=price;}
    public float getPrice(){return this.price;}

    /**��������*/

    public String toString() {
        return getName();
    }

}
