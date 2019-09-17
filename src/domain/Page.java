package domain;

import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/17 13:35
 * @description： 页
 * @version: 1.0$
 */
public class Page<T> {
    //当前是第几页
    private int pageNo;
    //当前页的List
    private List<T> list;
    //每页显示多少条记录
    private int pageSize = 3;
    //共有多少条记录
    private long totalItemNumber;

    public Page(int pageNo) {
        this.pageNo = pageNo;
    }

    //获取当前页数
    private int getPageNo() {
        //若当前页数小于0则当前页数等于1
        if (pageNo <= 0) {
            pageNo = 1;
        }
        //若当前页数大于总页数,则当前页数等于总页数
        if (pageNo > getTotalPageNumber()) {
            pageNo = getTotalPageNumber();
        }
        return pageNo;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public List<T> getList() {
        return list;
    }

    //获取总页数
    private int getTotalPageNumber() {
        int totalPageNumber = (int) totalItemNumber / pageSize;
        if (totalItemNumber % pageSize != 0) {
            totalPageNumber++;
        }
        return totalPageNumber;
    }

    public void setTotalItemNumber(long totalItemNumber) {
        this.totalItemNumber = totalItemNumber;
    }

    public boolean isHasNext() {
        if (getPageNo() < getTotalPageNumber()) {
            return true;
        }

        return false;
    }

    public int getPageSize() {
        return pageSize;
    }

    public boolean isHasPrev() {
        if (getPageNo() > 1) {
            return true;
        }

        return false;
    }

    public int getPrevPage() {
        if (isHasPrev()) {
            return getPageNo() - 1;
        }

        return getPageNo();
    }

    public int getNextPage() {
        if (isHasNext()) {
            return getPageNo() + 1;
        }

        return getPageNo();
    }
}
