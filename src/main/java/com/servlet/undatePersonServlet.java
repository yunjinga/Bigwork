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
@WebServlet("/undatePersonServlet")
public class undatePersonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String strPid = req.getParameter("pid") ;
        int pid = 0 ;
        if(strPid != null){
            pid = Integer.parseInt(strPid) ;
        }
        PersonInforService ps = new PersonInforServiceImpl() ;
        PersonInfor p = ps.getPersonById(pid) ;

        req.setAttribute("person",p);
        req.getRequestDispatcher("/modify.jsp").forward(req,resp); ;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
