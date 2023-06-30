<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String company=config.getInitParameter("cname");
%>
<h2>Company Name: <%= company %></h2>
</body>
</html>
