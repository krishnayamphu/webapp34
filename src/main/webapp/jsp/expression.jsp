<%@ page import="java.util.Date" %>
<%@ page import="com.ky.TestApp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp</title>
</head>
<body>
<%
    double pi=3.14;
%>
<p>PI: <%= pi %></p>
<p><%= new Date() %></p>
<p><%= new TestApp().test() %></p>
</body>
</html>
