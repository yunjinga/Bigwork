package com.servlet;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.write.metadata.WriteSheet;
import com.entity.PersonInfor;
import com.entity.person;
import com.service.PersonInforService;
import com.service.impl.PersonInforServiceImpl;
import com.service.impl.PersonServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.*;

@WebServlet("/ExcelDownServlet")
public class ExcelDownServlet extends HttpServlet {
    private List<PersonInfor> personInforList;
    private PersonInforServiceImpl personInforService = new PersonInforServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("下载");
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
//
        String fileName = "用户信息";
//        中文名称乱码设置
        fileName = URLEncoder.encode(fileName,"utf-8");
//        文件下载方式：附件下载还是在当前浏览器打开
//        附件下载：
        response.setHeader("Content-disposi tion","attachment;filename="+fileName+".xlsx");

        /**
         * 从GetAll 和 Contion获取数据
         */
        personInforList = (List<PersonInfor>) request.getSession().getAttribute("personinfor");
//        System.out.println("Excel得到的");
//        System.out.println(personInforList);

//        List<PersonInfor> personInfors = personInforService.excelGetAllPerson();
//        System.out.println(personInfors);
        String[] field = request.getParameterValues("opt");//field[0]="pid"
        PersonInforService personInforService = new PersonInforServiceImpl();
//        List<PersonInfor> personInforList = personInforService.SelectByConditonField(field);
        Set<String> fieldSet = new HashSet<>();
        for (String str : field){
//            System.out.println(str);
            fieldSet.add(str);
        }


        EasyExcel.write(response.getOutputStream(),PersonInfor.class).includeColumnFiledNames(fieldSet).sheet("user").doWrite(personInforList);
    }
}
