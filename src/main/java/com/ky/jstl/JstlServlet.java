package com.ky.jstl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "JstlServlet", value = "/jstl")
public class JstlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employees[]={"Ram","Hari","Sita"};
        ArrayList<Book> books=new ArrayList<>();
        books.add(new Book("C Language","Abc",200));
        books.add(new Book("Java Language","Abc",300));
        books.add(new Book("Web Design","Abc",150));
        books.add(new Book("Database","Abc",260));

        request.setAttribute("employees",employees);
        request.setAttribute("books",books);
        request.getRequestDispatcher("jstl.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
