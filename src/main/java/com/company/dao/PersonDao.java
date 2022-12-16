package com.company.dao;

import com.entity.person;

import java.util.List;

public interface PersonDao {
    // 全写抽象方法
    // 这个接口负责所有Person表的增删改查操作
    public boolean login(String pname, String pwd) ;

    public List<person> getAllPerson() ;

    public int delPersonById(int pid) ;

    public person getPersonById(int pid) ;

    public int UpdatePersonById(person person) ;

    public int AddPerson(person person) ;

}
