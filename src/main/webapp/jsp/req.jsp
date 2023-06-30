<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String data="Hello World";
    request.setAttribute("data",data);
    request.getRequestDispatcher("demo.jsp").forward(request,response);
%>
</body>
</html>
