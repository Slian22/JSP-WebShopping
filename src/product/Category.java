package product;
import java.io.*;


public class Category implements Serializable {

  /* ˽���ֶ� */

  private String categoryId;
  private String nam;
  private String description;
  /* JavaBean���Է��ʷ��� */

  public String getCategoryId() { return categoryId; }
  public void setCategoryId(String categoryId) { this.categoryId = categoryId; }

  public String getName() { return nam; }
  public void setName(String nam) { this.nam = nam; }

  public String getDescription() { return description; }
  public void setDescription(String description) { this.description = description; }
   /**��������*/
  public String toString() {
    return getCategoryId();
  }

}
