package com.company.dao.Impl;

import com.company.dao.PersonDao;
import com.entity.person;
import com.util.BaseDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonDaoImpl extends BaseDao implements PersonDao {
    @Override
    public boolean login(String pname, String pwd) {
        String sql = "select * from person where pname=? and pwd=?" ;
        ResultSet rs = this.getDataByAny(sql,new Object[]{pname,pwd}) ;
        boolean flag = false ;
            try {
                while(rs.next()){
                    flag = true ;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return flag ;
    }

    @Override
    public List<person> getAllPerson() {
        String sql = "select * from person" ;
        ResultSet rs = this.getDataByAny(sql,new Object[]{}) ;
        List<person> list = new ArrayList<>() ;
        try {
            while(rs.next()){
                person p = new person() ;
                p.setPid(rs.getInt(1)) ;
                p.setPname(rs.getString(2));
                p.setPage(rs.getInt(3));
                p.setPbirth(rs.getDate(4)) ;
                p.setPwd(rs.getString(5));
                list.add(p) ;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list ;
    }

    @Override
    public int delPersonById(int pid) {
        String sql = "delete from person where pid=?" ;
        return this.modifyData(sql,new Object[] {pid}) ;
    }

    @Override
    public int UpdatePersonById(person person) {
        String sql = "update person set pname=?,page=?,pbirth=? where pid=?" ;
        return this.modifyData(sql,new Object[] {person.getPname(),person.getPage(),person.getPbirth(),person.getPid()}) ;
    }

    @Override
    public person getPersonById(int pid) {
        String sql = "select * from person where pid=?" ;
        ResultSet rs = this.getDataByAny(sql,new Object[] {pid}) ;
        person p = new person() ;
        try {
            while(rs.next()){
                p.setPid(rs.getInt(1)) ;
                p.setPname(rs.getString(2));
                p.setPage(rs.getInt(3));
                p.setPbirth(rs.getDate(4)) ;
                p.setPwd(rs.getString(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public int AddPerson(person person){
         String sql = "insert into person (pname,page,pbirth,pwd) values (?,?,?,?)" ;
         return this.modifyData(sql,new Object[]{person.getPname() ,person.getPage(),person.getPbirth(), person.getPwd()}) ;
    }
}
