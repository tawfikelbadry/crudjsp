<%-- 
    Document   : delete
    Created on : Aug 15, 2016, 11:09:53 PM
    Author     : tito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            database.control c;

            try {
                int id = Integer.parseInt(request.getParameter("id"));

                c = new database.control();
                if (c.delete(id) == 1) {
                    out.println("<h1>" + id + " has deleted</h1>");
                    response.sendRedirect("view.jsp");
                }

            } catch (Exception e) {
                out.println("<h1>There is no such id</h1>");
            }


        %>


    </body>
</html>
