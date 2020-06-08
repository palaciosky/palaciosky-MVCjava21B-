<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : mostrartodo
    Created on : 05-28-2020, 05:10:47 PM
    Author     : gebbl
///////////////////////////////
FUNCIONA IRONICAMENTE BIEN¡¡
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vistas Registros</title>
         <link rel="stylesheet" type="text/css" href="cssboost/bootstrap.css">
    </head>
    <body class="bg-light">
        <div class="p-3 mb-2 bg-dark text-white " >
        <h1>Todos los registros!</h1>
         </div>
       <div class="shadow-lg p-3 mb-5 bg-white rounded container bg-white">  
            <h3>Registros ingresados anteriormente</h3>
      <c:forEach var="listaTotal" items="${sessionScope.personas}">
        DUI:${listaTotal.dui}<br>
        Apellidos:${listaTotal.apellidos}<br>
        Nombres:${listaTotal.nombres}<br>
        <br>
        <hr>
    </c:forEach>
        <a class="btn btn-secondary" href="index.jsp">Registrar</a>
        <a class="btn btn-secondary" href="actualizar.jsp">Editar</a>
        <a class="btn btn-danger" href="eliminar.jsp">Borrar</a>
         </div>
     </body>
</html>
