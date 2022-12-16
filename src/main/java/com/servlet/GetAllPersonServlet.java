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
@WebServlet("/GetAllPersonServlet")
public class GetAllPersonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PersonInforService ps1 = new PersonInforServiceImpl() ;
//        List<PersonInfor> list1 = ps1.getAllPerson();

        List<PersonInfor> list1 = ps1.excelGetAllPerson();
        req.getSession().setAttribute("personinfor",list1);
        req.setAttribute("personList",list1);
        req.getRequestDispatcher("/show.jsp").forward(req,resp);

    }
}
