<%-- 
    Document   : update
    Created on : Aug 15, 2016, 11:17:59 PM
    Author     : tito
--%>

<%@page import="database.team"%>
<%@page import="database.control"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            control c = new control();
            team t = new team();

            t.setId(Integer.parseInt(request.getParameter("id")));
            t.setName(request.getParameter("name"));
            t.setPassword(request.getParameter("password"));
            t.setDesc(request.getParameter("desc"));

            if (c.update(t) == 1) {
                response.sendRedirect("view.jsp");
            } else {
                out.print("<h1>failed</success>");

            }
        %>
        <h1>hi <%= t.getName()%> </h1>





    </body>
</html>
