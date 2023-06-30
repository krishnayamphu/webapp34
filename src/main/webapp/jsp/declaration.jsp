<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp</title>
</head>
<body>
<%!
    int getMaxTemperature(){
        return 40;
    }
%>

<p>Today's Maximum Temperature: <%= getMaxTemperature() %></p>
</body>
</html>
