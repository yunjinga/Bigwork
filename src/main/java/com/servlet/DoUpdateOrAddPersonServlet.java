package com.servlet;

import com.entity.PersonInfor;
import com.entity.person;
import com.service.PersonInforService;
import com.service.PersonService;
import com.service.impl.PersonInforServiceImpl;
import com.service.impl.PersonServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/DoUpdateOrAddPersonServlet")
public class DoUpdateOrAddPersonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        // 1. pid
        String strPid = req.getParameter("pid");
        // 2. psex
        String psex = req.getParameter("psex" );
        // 3. pname
        String pname = req.getParameter("pname") ;
        // 4. pbirth
        String strBir = req.getParameter("pbirth") ;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd") ;
        java.sql.Date pbir = null;
        try{
            pbir = new java.sql.Date(sdf.parse(strBir).getTime());
        }catch (ParseException e){
            e.printStackTrace();
        }
        // 5. pnational
        String pnational = req.getParameter("pnational");
        // 6. pnativeplace
        String pnativeplace = req.getParameter("pnativeplace") ;

        String ppoliticalstatus = req.getParameter("ppoliticalstatus") ;

        String pworkplace = req.getParameter("pworkplace") ;

        String pxueli = req.getParameter("pxueli") ;

        String pxuewei = req.getParameter("pxuewei") ;

        String pzhicheng = req.getParameter("pzhicheng");

        String pcurrentposition = req.getParameter("pcurrentposition") ;

        String strTenureOfTheSameRank = req.getParameter("pTenureOfTheSameRank") ;
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd") ;
        java.sql.Date pTenureOfTheSameRank = null;
        try{
            pTenureOfTheSameRank = new java.sql.Date(sdf1.parse(strTenureOfTheSameRank).getTime()) ;
        }catch (ParseException e){
            e.printStackTrace();
        }

        String strLengthOfTenure = req.getParameter("pLengthOfTenure") ;
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd") ;
        java.sql.Date pLengthOfTenure = null;
        try{
            pLengthOfTenure = new java.sql.Date(sdf2.parse(strLengthOfTenure).getTime()) ;
        }catch (ParseException e){
            e.printStackTrace();
        }

        String psocialwork = req.getParameter("psocialwork") ;

        String strjoinworktime = req.getParameter("pjoinworktime") ;
        SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd") ;
        java.sql.Date pjoinworktime = null;
        try {
            pjoinworktime = new java.sql.Date(sdf3.parse(strjoinworktime).getTime()) ;
        } catch (ParseException e) {
            e.printStackTrace();
        }

        String strjoinpartytime = req.getParameter("pjoinpartytime") ;
        SimpleDateFormat sdf4 = new SimpleDateFormat("yyyy-MM-dd") ;
        java.sql.Date pjoinpartytime = null;
        try {
//            pjoinpartytime = sdf4.parse(strjoinpartytime);
            pjoinpartytime = new java.sql.Date(sdf4.parse(strjoinpartytime).getTime()) ;
        } catch (ParseException e) {
            e.printStackTrace();
        }
//        Date pjoinpartytime = null;
//        try{
//            pjoinpartytime = new Date(sdf4.parse(strjoinpartytime).getTime()) ;
//        }catch (ParseException e){
//            e.printStackTrace();
//        }

        String phonor = req.getParameter("phonor") ;

        String pcanzhengyizheng = req.getParameter("pcanzhengyizheng") ;

        String ptraining = req.getParameter("ptraining") ;

        String pcontactnum = req.getParameter("pcontactnum") ;

        String pinfor = req.getParameter("pinfor") ;

        PersonInforService ps = new PersonInforServiceImpl() ;
        System.out.println(pTenureOfTheSameRank);
        if( strPid != null && !(strPid.equals("")) ){
            int pid = Integer.parseInt(strPid) ;
            if(ps.UpdatePersonById(new PersonInfor(pid,pname,psex,pbir,pnational,pnativeplace,ppoliticalstatus,pworkplace,pxueli,pxuewei,pzhicheng,pcurrentposition,pTenureOfTheSameRank,pLengthOfTenure,psocialwork,pjoinworktime,pjoinpartytime,phonor,pcanzhengyizheng,ptraining,pcontactnum,pinfor))==1) {
                resp.sendRedirect("/DataFFF_war_exploded/GetAllPersonServlet");
            }
        }else{
            if(ps.AddPerson(new PersonInfor(pname,psex,pbir,pnational,pnativeplace,ppoliticalstatus,pworkplace,pxueli,pxuewei,pzhicheng,pcurrentposition,pTenureOfTheSameRank,pLengthOfTenure,psocialwork,pjoinworktime,pjoinpartytime,phonor,pcanzhengyizheng,ptraining,pcontactnum,pinfor)) == 1){
                resp.sendRedirect("/DataFFF_war_exploded/GetAllPersonServlet");
            }
            else {
               System.out.println("插入失败");
            }
        }
    }
}
