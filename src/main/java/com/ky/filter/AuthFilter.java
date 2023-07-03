package com.ky.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AuthFilter", urlPatterns = {"/welcome","/myservlet"})
public class AuthFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req= (HttpServletRequest) request;
        HttpServletResponse res= (HttpServletResponse) response;
        HttpSession session=req.getSession(false);
        if(session==null){
            res.sendRedirect("login");
        }else{
            String user= (String) session.getAttribute("user");
            if(user==null){
                res.sendRedirect("login");
            }else{
                chain.doFilter(request, response);
            }
        }
    }
}
