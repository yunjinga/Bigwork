package com.company.dao;

import com.entity.PersonInfor;

import java.util.List;
import java.util.Map;

public interface PersonInforDao {

    public List<PersonInfor> getAllPerson() ;

    public List<PersonInfor> excelGetAllPerson() ;

    public int delPersonById(int pid) ;

    public PersonInfor getPersonById(int pid) ;

    public int UpdatePersonById(PersonInfor person) ;

    public int AddPerson(PersonInfor person) ;

    public List<PersonInfor> SelectByCondiction(Map<String, String[]> conditionMap);


}
