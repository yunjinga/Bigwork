package com.company.dao.Impl;

import com.company.dao.PersonInforDao;
import com.entity.PersonInfor;
import com.util.BaseDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.*;

public class PersonInforDaoImpl extends BaseDao implements PersonInforDao {
    @Override
    public List<PersonInfor> getAllPerson() {
        String sql = "select * from workpersoninfor" ;
        ResultSet rs = this.getDataByAny(sql,new Object[]{}) ;

        List<PersonInfor> list = new ArrayList<>() ;
        try {
            while(rs.next()){
                PersonInfor p = new PersonInfor() ;
                p.setPid(rs.getInt(1)) ;
                p.setPname(rs.getString(2));
                p.setPsex(rs.getString(3));
                p.setPbirth(rs.getDate(4));
                p.setPnational(rs.getString(5));
                p.setPnativeplace(rs.getString(6));
                p.setPpoliticalstatus(rs.getString(7));
                p.setPworkplace(rs.getString(8));
                p.setPzhicheng(rs.getString(9));
                p.setPxueli(rs.getString(10));
                p.setPcurrentposition(rs.getString(11));
                p.setPsocialwork(rs.getString(12));
                p.setPjoinworktime(rs.getDate(13));
                p.setPjoinpartytime(rs.getDate(14));
                p.setPhonor(rs.getString(15));
                p.setPtraining(rs.getString(16));
                p.setPcanzhengyizheng(rs.getString(17));
                p.setPcontactnum(rs.getString(18));
                p.setPinfor(rs.getString(19));
                list.add(p) ;
//                System.out.println(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list ;
    }

    @Override
    public List<PersonInfor> excelGetAllPerson() {
        String sql = "select * from workpersoninfor" ;
        ResultSet rs = this.getDataByAny(sql,new Object[]{}) ;
        List<PersonInfor> list = new ArrayList<>() ;
        try {
            while(rs.next()){
                PersonInfor p = new PersonInfor() ;
                p.setPid(rs.getInt(1)) ;
                p.setPname(rs.getString(2));
                p.setPsex(rs.getString(3));
                if(rs.getDate(4)!=null){
                    Date utilDate = new Date((rs.getDate(4)).getTime());
                p.setPbirth(utilDate);}
                p.setPnational(rs.getString(5));
                p.setPnativeplace(rs.getString(6));
                p.setPpoliticalstatus(rs.getString(7));
                p.setPworkplace(rs.getString(8));
                p.setPxueli(rs.getString(9));
                p.setPxuewei(rs.getString(10));
                p.setPzhicheng(rs.getString(11));
                p.setPcurrentposition(rs.getString(12));
                if(rs.getDate(13)!=null){
                    Date utilDate3 = new Date((rs.getDate(13)).getTime());
                    p.setpTenureOfTheSameRank(utilDate3);}
                if(rs.getDate(14)!=null){
                    Date utilDate4 = new Date((rs.getDate(14)).getTime());
                    p.setpLengthOfTenure(utilDate4);}
                p.setPsocialwork(rs.getString(15));
                if(rs.getDate(16)!=null){
                    Date utilDate1 = new Date((rs.getDate(16)).getTime());
                p.setPjoinworktime(utilDate1);}
                if(rs.getDate(17)!=null){
                    Date utilDate2 = new Date((rs.getDate(17)).getTime());
                p.setPjoinpartytime(utilDate2);}
                p.setPhonor(rs.getString(18));
                p.setPcanzhengyizheng(rs.getString(19));
                p.setPtraining(rs.getString(20));
                p.setPcontactnum(rs.getString(21));
                p.setPinfor(rs.getString(22));
                list.add(p) ;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list ;
    }

    @Override
    public int delPersonById(int pid) {
        String sql = "delete from workpersoninfor where pid=?" ;
        return this.modifyData(sql,new Object[] {pid}) ;
    }

    @Override
    public PersonInfor getPersonById(int pid) {
        String sql = "select * from workpersoninfor where pid=?" ;
        ResultSet rs = this.getDataByAny(sql,new Object[] {pid}) ;
        PersonInfor p = new PersonInfor() ;
        try {
            while(rs.next()){
//                PersonInfor p = new PersonInfor() ;
                p.setPid(rs.getInt(1)) ;
                p.setPname(rs.getString(2));
                p.setPsex(rs.getString(3));
                p.setPbirth(rs.getDate(4));
                p.setPnational(rs.getString(5));
                p.setPnativeplace(rs.getString(6));
                p.setPpoliticalstatus(rs.getString(7));
                p.setPworkplace(rs.getString(8));
                p.setPxueli(rs.getString(9));
                p.setPxuewei(rs.getString(10));
                p.setPzhicheng(rs.getString(11));
                p.setPcurrentposition(rs.getString(12));
                p.setpTenureOfTheSameRank(rs.getDate(13));
                p.setpLengthOfTenure(rs.getDate(14));
                p.setPsocialwork(rs.getString(15));
                p.setPjoinworktime(rs.getDate(16));
                p.setPjoinpartytime(rs.getDate(17));
                p.setPhonor(rs.getString(18));
                p.setPcanzhengyizheng(rs.getString(19));
                p.setPtraining(rs.getString(20));
                p.setPcontactnum(rs.getString(21));
                p.setPinfor(rs.getString(22));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public int UpdatePersonById(PersonInfor person) {
        String sql = "update workpersoninfor set pname=?,psex=?,pbirth=?,pnational=?,pnativeplace=?,ppoliticalstatus=?,pworkplace=?,pxueli=?,pxuewei=?,pzhicheng=?,pcurrentposition=?,pTenureOfTheSameRank=?,pLengthOfTenure=?,psocialwork=?,pjoinworktime=?,pjoinpartytime=?,phonor=?,pcanzhengyizheng=?,ptraining=?,pcontactnum=?,pinfor=? where pid=?" ;
        return this.modifyData(sql,new Object[] {person.getPname(),person.getPsex(),person.getPbirth(),person.getPnational(),person.getPnativeplace(),person.getPpoliticalstatus(),person.getPworkplace(),person.getPxueli(),person.getPxuewei(),person.getPzhicheng(),person.getPcurrentposition(),person.getpTenureOfTheSameRank(),person.getpLengthOfTenure(),person.getPsocialwork(),person.getPjoinworktime(),person.getPjoinpartytime(),person.getPhonor(),person.getPcanzhengyizheng(),person.getPtraining(),person.getPcontactnum(),person.getPcontactnum(),person.getPid()}) ;
    }

    @Override
    public int AddPerson(PersonInfor person) {
        String sql = "insert into workpersoninfor (pname, psex, pbirth,pnational,pnativeplace,ppoliticalstatus,pworkplace,pxueli,pxuewei,pzhicheng,pcurrentposition,pTenureOfTheSameRank,pLengthOfTenure,psocialwork,pjoinworktime,pjoinpartytime,phonor,pcanzhengyizheng,ptraining,pcontactnum,pinfor) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" ;

        return this.modifyData(sql,new Object[]{person.getPname(),person.getPsex(),person.getPbirth(),person.getPnational(),person.getPnativeplace(),person.getPpoliticalstatus(),person.getPworkplace(),person.getPxueli(),person.getPxuewei(),person.getPzhicheng(),person.getPcurrentposition(),person.getpTenureOfTheSameRank(),person.getpLengthOfTenure(),person.getPsocialwork(),person.getPjoinworktime(),person.getPjoinpartytime(),person.getPhonor(),person.getPcanzhengyizheng(),person.getPtraining(),person.getPcontactnum(),person.getPinfor()}) ;
    }

    @Override
    public List<PersonInfor> SelectByCondiction(Map<String, String[]> conditionMap) {
        String sql = "select * from workpersoninfor where 1=1";


        if(conditionMap.containsKey("pid")){
            sql+=" and pid like '%"+conditionMap.get("pid")[0]+"%' ";
        }
        if(conditionMap.containsKey("pname")){
            sql+=" and pname like '%"+conditionMap.get("pname")[0]+"%' ";
        }
        if(conditionMap.containsKey("psex")){
            sql+=" and psex like '%"+conditionMap.get("psex")[0]+"%' ";
        }
        if(conditionMap.containsKey("pbirth")){
            sql+=" and pbirth like '%"+conditionMap.get("pbirth")[0]+"%' ";
        }
        if(conditionMap.containsKey("pnational")){
            sql+=" and pnational like '%"+conditionMap.get("pnational")[0]+"%' ";
        }

        if(conditionMap.containsKey("pnativeplace")){
            sql+=" and pnativeplace like '%"+conditionMap.get("pnativeplace")[0]+"%' ";
        }
        if(conditionMap.containsKey("ppoliticalstatus")){
            sql+=" and ppoliticalstatus like '%"+conditionMap.get("ppoliticalstatus")[0]+"%' ";
        }
        if(conditionMap.containsKey("pworkplace")){
            sql+=" and pworkplace like '%"+conditionMap.get("pworkplace")[0]+"%' ";
        }
        if(conditionMap.containsKey("pxueli")){
            sql+=" and pxueli like '%"+conditionMap.get("pxueli")[0]+"%' ";
        }
        if(conditionMap.containsKey("pxuewei")){
            sql+=" and pxuewei like '%"+conditionMap.get("pxuewei")[0]+"%' ";
        }
        if(conditionMap.containsKey("pzhicheng")){
            sql+=" and pzhicheng like '%"+conditionMap.get("pzhicheng")[0]+"%' ";
        }
        if(conditionMap.containsKey("pcurrentposition")){
            sql+=" and pcurrentposition like '%"+conditionMap.get("pcurrentposition")[0]+"%' ";
        }
        if(conditionMap.containsKey("pTenureOfTheSameRank")){
            sql+=" and pTenureOfTheSameRank like '%"+conditionMap.get("pTenureOfTheSameRank")[0]+"%' ";
        }
        if(conditionMap.containsKey("pLengthOfTenure")){
            sql+=" and pLengthOfTenure like '%"+conditionMap.get("pLengthOfTenure")[0]+"%' ";
        }
        if(conditionMap.containsKey("psocialwork")){
            sql+=" and psocialwork like '%"+conditionMap.get("psocialwork")[0]+"%' ";
        }

        if(conditionMap.containsKey("pjoinworktime")){
            sql+=" and pjoinworktime like '%"+conditionMap.get("pjoinworktime")[0]+"%' ";
        }
        if(conditionMap.containsKey("pjoinpartytime")){
            sql+=" and pjoinpartytime like '%"+conditionMap.get("pjoinpartytime")[0]+"%' ";
        }
        if(conditionMap.containsKey("phonor")){
            sql+=" and phonor like '%"+conditionMap.get("phonor")[0]+"%' ";
        }
        if(conditionMap.containsKey("pcanzhengyizheng")){
            sql+=" and pcanzhengyizheng like '%"+conditionMap.get("pcanzhengyizheng")[0]+"%' ";
        }
        if(conditionMap.containsKey("ptraining")){
            sql+=" and ptraining like '%"+conditionMap.get("ptraining")[0]+"%' ";
        }
        if(conditionMap.containsKey("pcontactnum")){
            sql+=" and pcontactnum like '%"+conditionMap.get("pcontactnum")[0]+"%' ";
        }
        if(conditionMap.containsKey("pinfor")){
            sql+=" and pinfor like '%"+conditionMap.get("pinfor")[0]+"%' ";
        }

        ResultSet rs = this.getDataByAny(sql,new Object[]{}) ;
        List<PersonInfor> list = new ArrayList<>() ;
        try {
            while(rs.next()){
                PersonInfor p = new PersonInfor() ;
                p.setPid(rs.getInt(1)) ;
                p.setPname(rs.getString(2));
                p.setPsex(rs.getString(3));
                Date utilDate = new Date((rs.getDate(4)).getTime());
                p.setPbirth(utilDate);
                p.setPnational(rs.getString(5));
                p.setPnativeplace(rs.getString(6));
                p.setPpoliticalstatus(rs.getString(7));
                p.setPworkplace(rs.getString(8));
                p.setPxueli(rs.getString(9));
                p.setPxuewei(rs.getString(10)) ;
                p.setPzhicheng(rs.getString(11));
                p.setPcurrentposition(rs.getString(12));
                Date utilDate3 = new Date((rs.getDate(13)).getTime());
                p.setpTenureOfTheSameRank(utilDate3);
                Date utilDate4 = new Date((rs.getDate(14)).getTime());
                p.setpLengthOfTenure(utilDate4);
                p.setPsocialwork(rs.getString(15));
                Date utilDate1 = new Date((rs.getDate(16)).getTime());
                p.setPjoinworktime(utilDate1);
                Date utilDate2 = new Date((rs.getDate(17)).getTime());
                p.setPjoinpartytime(utilDate2);
                p.setPhonor(rs.getString(18));
                p.setPtraining(rs.getString(19));
                p.setPcanzhengyizheng(rs.getString(20));
                p.setPcontactnum(rs.getString(21));
                p.setPinfor(rs.getString(22));
                list.add(p) ;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list ;
    }




}



