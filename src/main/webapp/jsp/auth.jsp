<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Auth</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(username.equals("admin")&&password.equals("a123")){
        response.sendRedirect("welcome.jsp");
    }else{
        String errMessage="Invalid Username or Password";
        request.setAttribute("errorMessage",errMessage);
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }
%>

</body>
</html>
