<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : mostrartodo
    Created on : 05-28-2020, 09:13:16 PM
    Author     : Palacios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Archivados</title>
    </head>
    <body>
        <h1>Lista</h1>
    <c:forEach var="listaTotal" items="${sessionScope.personas}">
        DUI:${listaTotal.dui}<br>
        Apellidos:${listaTotal.apellidos}<br>
        Nombres:${listaTotal.nombres}<br>
        <br>
        <hr>
    </c:forEach>    
    </body>
</html>
