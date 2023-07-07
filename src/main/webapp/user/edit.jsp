<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>

<h3>User Detail</h3>
<a href="users">All Users</a>
<form action="user-edit" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <label>Username</label>
    <input type="text" name="username" value="${user.username}" required>
    <br><br>
    <label>Password</label>
    <input type="password" name="password"  value="${user.password}" required>
    <br><br>
    <button>
        Update User
    </button>
</form>
</body>
</html>
