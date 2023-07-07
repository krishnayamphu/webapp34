package com.ky.controllers;

import com.ky.dao.UserDAO;
import com.ky.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserEditController", value = "/user-edit")
public class UserEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        User user= UserDAO.getUsers(id);
        request.setAttribute("user",user);
        request.getRequestDispatcher("user/edit.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        int id=Integer.parseInt(request.getParameter("id"));
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setId(id);
        UserDAO.updateUser(user);
        response.sendRedirect("users");
    }
}
