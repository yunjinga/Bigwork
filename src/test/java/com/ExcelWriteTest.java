package com;

import com.alibaba.excel.EasyExcel;
import com.entity.PersonInfor;
import org.junit.Test;

import java.util.*;

public class ExcelWriteTest {
    @Test
    public void test01(){
        String fileName = "user.xlsx";

        List<PersonInfor> personInfors = new ArrayList<>();
        Date date = new Date();
//        PersonInfor personInfor1 =new PersonInfor("小绿", "nan", date, "String pnational", "String pnativeplace", "String ppoliticalstatus", "String pworkplace", "String pzhicheng", "String pxueli", "String pcurrentposition", "String psocialwork", date, date, "String phonor", "String ptraining", "String pcanzhengyizheng", "String pcontactnum", "String pinfor");
//        PersonInfor personInfor2 =new PersonInfor("小红", "女", date, "String pnational", "String pnativeplace", "String ppoliticalstatus", "String pworkplace", "String pzhicheng", "String pxueli", "String pcurrentposition", "String psocialwork", date, date, "String phonor", "String ptraining", "String pcanzhengyizheng", "String pcontactnum", "String pinfor");
//        personInfors.add(personInfor1);
//        personInfors.add(personInfor2);

        Set<String> set = new HashSet<>();
        set.add("pname");
        set.add("psex");
        EasyExcel.write(fileName,PersonInfor.class).includeColumnFiledNames(set).sheet("用户信息").doWrite(personInfors);
    }
}
