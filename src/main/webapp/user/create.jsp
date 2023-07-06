<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new User</title>
</head>
<body>

<h3>Add New User</h3>
<form action="user-create" method="post">
    <label>Username</label>
    <input type="text" name="username" required>
    <br><br>
    <label>Password</label>
    <input type="password" name="password" required>
    <br><br>
    <button>
        Save User
    </button>
</form>
</body>
</html>
