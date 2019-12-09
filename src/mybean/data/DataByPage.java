package mybean.data;
public class DataByPage{
    int pageSize=1;                      //每页显示的记录数
    int totalPages=1;                     //分页后的总页数
    int currentPage =1   ;                 //当前显示页
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
