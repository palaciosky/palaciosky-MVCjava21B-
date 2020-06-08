<%-- 
    Document   : index
    Created on : 27 may. 2020, 12:10:55
    Author     : Palacios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="cssboost/bootstrap.css">
    </head>
    <body>
        <div class="p-3 mb-2 bg-dark text-white" >
        <h1>Registro de Personas</h1>
        </div>
        <div class="container">
            <div class="shadow-lg p-3 mb-5 bg-white rounded">
            <h3>Ingrese datos aquí</h3>
        <form class="form-group" action="recibir.do" method="POST">
          <label for="txtDui">DUI</label>
          <input type="text" class="form-control" name="txtDui" value="" />  
          <label for="txtDui">Apellidos</label>
          <input type="text" class="form-control" name="txtApellidos" value="" />
          <label for="txtDui">Nombres</label>
          <input type="text" class="form-control" name="txtNombres" value="" />
          <input type="submit" class="btn btn-info" value="Registrar nueva Persona" />
         <a class="btn btn-secondary" href="mostrar.do">O ver registros</a>
          
            
        </form>
            </div>
        <script src="../cssboost/bootstrap.min.js"></script>
        
       </div>
    </body>
</html>
