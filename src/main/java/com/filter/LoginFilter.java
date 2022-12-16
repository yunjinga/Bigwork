package com.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        Object obj = req.getSession().getAttribute("pname") ;
        if(obj != null){
            try {
                filterChain.doFilter(servletRequest,servletResponse);
            }catch (IOException | ServletException e){
                e.printStackTrace();
            }
        }else{
            try {
                resp.sendRedirect("/login.jsp");
            }catch (IOException e){
                e.printStackTrace();
            }
        }
    }

    @Override
    public void destroy() {

    }
}
