<%-- 
    Document   : insert
    Created on : Aug 15, 2016, 10:48:59 PM
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

            String name = request.getParameter("name");
            String pass = request.getParameter("password");
            String desc = request.getParameter("desc");
            // String tech=request.getParameter("technology");

            database.team t = new database.team();
            t.setName(name);
            t.setPassword(pass);
            t.setDesc(desc);

            c = new database.control();

            c.insert(t);


        %>

    <html>
        <body>

            <%= name%>  <br>
            <%=  pass%> <br> 
            <%=   desc%>
            <h2>  <%= c.q%>  </h2>

            <h1>success</h1>
            <% response.sendRedirect("view.jsp");                 %>
        </body>
    </html>
</body>
</html>
