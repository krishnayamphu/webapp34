<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:out value="${'Welcome to JSTL'}"/>
<%
    int income =4000;
%>
<c:set var="income" value="${4000}" scope="request"/>
<c:out value="${income}"/>
<hr>
<c:set var="temp" value="${40}" scope="request"/>
<c:if test="${temp>=35}">
    <c:out value="Too much hot"/>
</c:if>

<c:forEach var="i" begin="1" end="5">
    <c:out value="${i}"/>
    <br>
</c:forEach>

<hr>
<h2>Employee List</h2>
<c:forEach var="e" items="${employees}">
    <p>${e}</p>
</c:forEach>

<h2>Books</h2>
<c:forEach var="b" items="${books}">
    <p>${b.title} - ${b.author} - ${b.price}</p>
</c:forEach>
</body>
</html>
