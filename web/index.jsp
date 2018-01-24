<%-- 
    Document   : index
    Created on : Aug 15, 2016, 10:43:42 PM
    Author     : tito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
    <head>  
        <meta charset="utf-8">  
        <title>Insert new  Team</title>  
    </head>  
    <body>  

        <h1>Add New Team</h1>  
        <form action="insert.jsp" method="post">  
            <table>  
                <tr><td>Name:</td><td><input type="text" name="name"/></td></tr>  
                <tr><td>Password:</td><td><input type="password" name="password"/></td></tr>  
                <tr><td>Description</td><td><input type="text" name="desc"/></td></tr>  
                <tr><td>technology:</td><td>  
                        <select name="technology" style="width:150px">  
                            <option>servlet</option>  
                            <option>JSP</option>  
                            <option>Heibernate</option>  
                        </select>  
                    </td></tr>  
                <tr><td colspan="2"><input type="submit" value="Save team"/></td></tr>  
            </table>  
        </form>  

        <br/>  
        <a href="view.jsp">view employees</a>  

    </body>  
</html>  
