package com.servlet;

import com.entity.PersonInfor;
import com.service.PersonInforService;
import com.service.impl.PersonInforServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/getPersonByIdServlet")
public class getPersonByIdServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PersonInforService ps1 = new PersonInforServiceImpl() ;
        PersonInfor personInfor = ps1.getPersonById(Integer.parseInt(req.getParameter("pid")));
        req.setAttribute("person",personInfor);
        req.getRequestDispatcher("/detail.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}

