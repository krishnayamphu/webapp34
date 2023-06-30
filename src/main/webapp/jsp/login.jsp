<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Login</title>
</head>
<body>
<form action="auth.jsp" method="post">
    <%
        String msg= (String) request.getAttribute("errorMessage");
        if(msg!=null){
            out.print(msg);
        }
    %><br>
    <label>Username</label>
    <input type="text" name="username">
    <br><br>
    <label>Password</label>
    <input type="password" name="password">
    <br><br>
    <button type="submit">Login</button>
</form>

</body>
</html>
