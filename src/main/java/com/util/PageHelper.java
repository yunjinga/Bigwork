package com.util;

public class PageHelper {
    private int pageNo ;    // 页码
    private int PageSize ;  // 页容量
    private int DataCount ; // 数据总条数
    private int PageCount ; // 总页数

    public int getPageNo() {
        return pageNo;
    }

    public int getPageSize() {
        return PageSize;
    }

    public int getDataCount() {
        return DataCount;
    }

    public int getPageCount() {
        if(this.getDataCount() % this.getPageSize() == 0){
            this.PageCount = this.DataCount / this.PageSize ;
        }else {
            this.PageCount = this.DataCount / this.PageSize + 1 ;
        }
        return PageCount;
    }

    public void setPageCount(int pageCount) {
        PageCount = pageCount;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public void setPageSize(int pageSize) {
        PageSize = pageSize;
    }

    public void setDataCount(int dataCount) {
        DataCount = dataCount;
    }

}