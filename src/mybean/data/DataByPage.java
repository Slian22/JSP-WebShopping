package mybean.data;
public class DataByPage{
    int pageSize=1;                      //ÿҳ��ʾ�ļ�¼��
    int totalPages=1;                     //��ҳ�����ҳ��
    int currentPage =1   ;                 //��ǰ��ʾҳ
    public void setPageSize(int size){
        pageSize=size;
    }
    public int getPageSize(){
        return pageSize;
    }
    public int getTotalPages(){
        return totalPages;
    }
    public void setTotalPages(int n){
        totalPages=n;
    }
    public void setCurrentPage(int n){
        currentPage =n;
    }
    public int getCurrentPage(){
        return currentPage ;
    }
}
