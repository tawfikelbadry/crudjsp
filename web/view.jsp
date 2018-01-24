<%-- 
    Document   : view
    Created on : Aug 15, 2016, 11:01:41 PM
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

        <a href='index.jsp'>Add New Team</a>
        <h1>Team List</h1>
        <table border='1' width='100%' style='text-align:center'>
            <%  database.control c = new database.control();
                    Object arr[][] = c.display();%>
            <tr>
            <th>id</th>
            <th>name</th>
            <th>description</th>
            <th>password</th>
            <th>technology</th>
            <th colspan='2'>actions</th>
        </th>

        <%  for (int i = 0; i < arr.length; i++) { %>
        <tr>
            <%   for (int l = 0; l < arr[i].length; l++) {%>
            <td> <%= arr[i][l]%></td>
            <% }%>
            <td><a href='edit.jsp?id=<%= arr[i][0]%>'>edit</a></td>
            <td><a href='delete.jsp?id=<%= arr[i][0]%>'>delete</a></td>
        </tr>
        <%   }%>

    </table>
</body>
</html>



