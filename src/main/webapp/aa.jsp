<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attributes</title>
</head>
<body>
<%
    String name= (String) request.getAttribute("name");
%>
<p>Name: <%= name %></p>
</body>
</html>
