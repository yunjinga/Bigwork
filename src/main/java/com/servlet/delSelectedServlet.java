package com.servlet;

import com.service.PersonInforService;
import com.service.impl.PersonInforServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/delSelectedServlet")
public class delSelectedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取所有id
        String[] ids = request.getParameterValues("uid");
        System.out.println(ids);
        //调用service删除
        PersonInforService service = new PersonInforServiceImpl();
//        service.delSelectedUser(ids);
        //跳转查询所有servlet
        response.sendRedirect(request.getContextPath()+"/GetAllPersonServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
