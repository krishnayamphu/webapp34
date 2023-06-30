<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String data=(String)request.getAttribute("data");
    out.print(data);
%>

</body>
</html>
