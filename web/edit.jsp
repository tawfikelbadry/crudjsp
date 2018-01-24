<%-- 
    Document   : edit
    Created on : Aug 15, 2016, 11:09:37 PM
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
            database.control c = new database.control();
            int id = Integer.parseInt(request.getParameter("id"));
            Object[] team = c.getTeam(id);
        %>

        <h2>Edit Team</h2>

        <form method='POST' action='update.jsp'>
            <table> 
                <tr><input hidden type='text' name='id' value='<%= team[0]%>'></tr> 
                <tr><td>Name:</td><td><input type='text' name='name' value='<%= team[1]%>'></td></tr> 
                <tr><td>Password:</td><td><input type='text' name='password' value='<%= team[3]%>' /></td></tr> 
                <tr><td>Description</td><td><input type='text' name='desc' value='<%= team[2]%>' /></td></tr> 
            </table> 
            <input type='submit' value='Edit'>
        </form>

    </body>
</html>





