package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AttributeServlet", value = "/attribute")
public class AttributeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name="Aptech";
        request.setAttribute("name",name);
        request.getRequestDispatcher("aa.jsp").forward(request,response);
    }
}
