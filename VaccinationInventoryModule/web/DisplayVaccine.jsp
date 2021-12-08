<%-- 
    Document   : DisplayVaccine
    Created on : 8 Dec 2021, 18:43:18
    Author     : gallenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine List</title>
    </head>
    <body>
        <h1>Vaccine Lists!</h1>
        
        <%@taglib uri="/WEB-INF/tlds/All_patients" prefix="vaccination"%>
        <vaccination:select table="vaccinereg"/>
        
    </body>
</html>
