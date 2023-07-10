package com.ky.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MediaController", value = "/media")
public class MediaController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path=getServletContext().getRealPath("/uploads");
    System.out.println(path);
    File file=new File(path);
    File[] files=file.listFiles();
        ArrayList<String> allFiles=new ArrayList<>();
    for(File f:files){
        allFiles.add(f.getName());
        System.out.println(f.getName());
    }
    request.setAttribute("allFiles",allFiles);
    request.getRequestDispatcher("media/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
