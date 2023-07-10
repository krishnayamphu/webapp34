<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Media Files</title>
</head>
<body>

<c:forEach var="item" items="${allFiles}">
    <img width="100" src="uploads/${item}" alt="">
</c:forEach>
</body>
</html>
