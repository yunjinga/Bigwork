package com.entity;

import java.sql.Date;

public class person {
    private int pid ;
    private String pname ;
    private int page ;
    private String pwd ;
    private Date pbirth ;


    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setPbirth(Date pbirth) {
        this.pbirth = pbirth;
    }

    public int getPid() {
        return pid;
    }

    public String getPname() {
        return pname;
    }

    public int getPage() {
        return page;
    }

    public String getPwd() {
        return pwd;
    }

    public Date getPbirth() {
        return pbirth;
    }

    @Override
    public String toString() {
        return "Person [pid=" + pid + ",pname = " + pname + ",page =" + page + ",pbirth =" + pbirth + ",pwd = " + pwd ;
    }
    public person(int pid ,String pname,int page,Date pbirth,String pwd){
        this.pid = pid ;
        this.pname = pname ;
        this.pbirth = pbirth ;
        this.pwd = pwd ;
        this.page = page ;
    }

    public person(){
    }

    public person(String pname,int page,Date pbirth,String pwd){
        this.pname = pname ;
        this.pbirth = pbirth ;
        this.pwd = pwd ;
        this.page = page ;
    }
}
