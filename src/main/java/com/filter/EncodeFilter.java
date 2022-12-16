package com.filter;//package com.filter;
//
//import javax.servlet.*;
//import javax.servlet.annotation.WebServlet;
//import java.io.IOException;
//@WebServlet("/*")
//public class EncodeFilter implements Filter {
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//        System.out.println("过滤器初始化");
//    }
//
//    @Override
//    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
//        servletRequest.setCharacterEncoding("utf-8");
//        servletResponse.setCharacterEncoding("utf-8");
//        servletResponse.setContentType("text/html;charset=utf-8");
//        filterChain.doFilter(servletRequest,servletResponse);
//    }
//
//    @Override
//    public void destroy() {
//        System.out.println("过滤器销毁");
//    }
//}
