package com.service.impl;

import com.company.dao.Impl.PersonInforDaoImpl;
import com.company.dao.PersonInforDao;
import com.entity.PersonInfor;
import com.service.PersonInforService;
import java.util.List;
import java.util.Map;

public class PersonInforServiceImpl implements PersonInforService {

    private PersonInforDao pd = new PersonInforDaoImpl();

    public List<PersonInfor> getAllPerson() {
        return pd.getAllPerson() ;
    }

    @Override
    public List<PersonInfor> excelGetAllPerson() {
        return pd.excelGetAllPerson();
    }

    @Override
    public int delPersonById(int pid) {
        return pd.delPersonById(pid) ;
    }

    @Override
    public PersonInfor getPersonById(int pid) {
        return pd.getPersonById(pid);
    }

    @Override
    public int UpdatePersonById(PersonInfor person) {
        return pd.UpdatePersonById(person);
    }

    @Override
    public int AddPerson(PersonInfor person) {
        return pd.AddPerson(person);
    }

    @Override
    public List<PersonInfor> SelectByCondiction(Map<String, String[]> conditionMap) {
        return pd.SelectByCondiction(conditionMap);
    }



}
