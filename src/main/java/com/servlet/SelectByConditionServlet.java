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
import java.util.List;
import java.io.IOException;
import java.util.Map;

@WebServlet("/SelectByConditionServlet")
public class SelectByConditionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        /*
         * select * from emp where empno=? and ename=? and job=?;
         * key -String - 表单中标签的name属性  --条件 --empno，ename,job
         * value -String[] -表单中标签输入的值  --参数 --? ? ?
         */
//        Map<String, String[]> conditionMap = req.getParameterMap();


        Map<String,String[]> personInforMap= req.getParameterMap();
//        System.out.println(personInforMap.get("pid")[0]);
//        System.out.println(personInforMap.get("pname")[0]);
        PersonInforService personInforService =new PersonInforServiceImpl();
        List<PersonInfor> personInforList = personInforService.SelectByCondiction(personInforMap);

        req.getSession().setAttribute("personinfor",personInforList);

        req.setAttribute("personList",personInforList);
        req.getRequestDispatcher("/show.jsp").forward(req,resp);
    }
}
