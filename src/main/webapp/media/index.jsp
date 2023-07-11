<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Media Files</title>
    <style>
        .media-container{
            width: 90%;
            margin: 15px auto;
            display: flex;
            float-wrap: wrap;
        }
        .media{
            display: flex;
            flex-direction: column;
            justify-content: center;
            width: 200px;
            margin-right: 15px;
        }
        .media button{
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="media-container">
    <c:forEach var="item" items="${allFiles}">
        <div class="media">
            <a href="uploads/${item}">
                <img width="100" src="uploads/${item}" alt="">
            </a>
            <form action="media" method="post">
                <input type="hidden" name="image" value="${item}">
                <button type="submit">Remove</button>
            </form>
        </div>
    </c:forEach>
</div>


</body>
</html>
