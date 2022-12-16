package com.service.impl;

import com.company.dao.Impl.PersonDaoImpl;
import com.company.dao.PersonDao;
import com.entity.person;
import com.service.PersonService;

import java.util.List;

public class PersonServiceImpl implements PersonService {

    private PersonDao pd = new PersonDaoImpl() ;
    @Override
    public boolean login(String pname, String pwd) {
        return pd.login(pname,pwd);
    }

    @Override
    public List<person> getAllPerson() {
        return pd.getAllPerson();
    }

    @Override
    public int delPersonById(int pid) {
        return pd.delPersonById(pid) ;
    }

    @Override
    public person getPersonById(int pid) {
        return pd.getPersonById(pid);
    }

    @Override
    public int UpdatePersonById(person person) {
        return pd.UpdatePersonById(person) ;
    }

    public int AddPerson(person person){
        return pd.AddPerson(person) ;
    }






}
