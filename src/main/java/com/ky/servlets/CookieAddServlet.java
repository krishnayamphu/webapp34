package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CookieAddServlet", value = "/cookie-add")
public class CookieAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookie=new Cookie("company","Aptech-Computer-Education");
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
        response.getWriter().print("cookie time set successfully");
    }
}
