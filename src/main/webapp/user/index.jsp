<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Users</title>
    <style>
        table{
            border-collapse: collapse;
        }
        th,td{
            border:1px solid #ccc;
            padding: 5px 10px;
        }
    </style>
</head>
<body>

<h3>All Users</h3>
<a href="user-create">Create New User</a>
<table>
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Created Date</th>
        <th>Action</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.createdAt}</td>
            <td>
                <a href="user-edit?id=${user.id}">Edit</a>
                <form action="users" method="post">
                    <input type="hidden" value="${user.id}" name="id">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
