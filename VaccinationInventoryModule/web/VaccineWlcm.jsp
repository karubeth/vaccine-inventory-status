<%-- 
    Document   : VaccineWlcm
    Created on : 8 Dec 2021, 15:00:26
    Author     : gallenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine Process</title>
    </head>
    <body>
    <center>
        <h1>Vaccine Lists</h1>
           
        
        
       
        
        <%
             String vaccine = request.getParameter("vaccine");
             String number = request.getParameter("number");
        %>
        
        <%@taglib uri="/WEB-INF/tlds/VacinTg" prefix="vaccination"%>
        <vaccination:insert table="vaccinereg"  vaccine="${vaccine}" number="${number}"/>
        
    </center>     
    </body>
</html>
