package com;

import com.entity.PersonInfor;
import com.service.impl.PersonInforServiceImpl;
import org.junit.Test;

import java.util.Date;

public class ExcelUp {
    PersonInforServiceImpl personInforService = new PersonInforServiceImpl();
    @Test
    public void UpExcelTest(){
        Date date = new Date();
//        PersonInfor personInfor1 =new PersonInfor("小绿", "nan", date, "String pnational", "String pnativeplace", "String ppoliticalstatus", "String pworkplace", "String pzhicheng", "String pxueli", "String pcurrentposition", "String psocialwork", date, date, "String phonor", "String ptraining", "String pcanzhengyizheng", "String pcontactnum", "String pinfor");
//        personInforService.AddPerson(personInfor1);
        System.out.println("Success");
    }
}
