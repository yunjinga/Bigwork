package com.service;

import com.entity.PersonInfor;
import com.entity.person;

import java.util.List;

public interface PersonService {
    public boolean login(String pname, String pwd) ;

    public List<person> getAllPerson() ;

    public int delPersonById(int pid) ;

    public person getPersonById(int pid) ;

    public int UpdatePersonById(person person) ;

    public int AddPerson(person person) ;


}
