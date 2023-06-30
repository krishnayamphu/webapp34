<%
    String name = request.getParameter("fullname");
    String email = request.getParameter("email");
    out.print(name+", "+email);
%>
