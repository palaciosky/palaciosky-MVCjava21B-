<%-- 
    Document   : elimnar
    Created on : 06-07-2020, 12:15:43 PM
    Author     : Palacios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
        <link rel="stylesheet" type="text/css" href="cssboost/bootstrap.css">
    </head>
   <body class="bg-light">
      
   <div class="p-3 mb-2 bg-dark text-white" >
        <h1>Eliminar</h1>
   </div>
       <div class=" container shadow-lg p-3 mb-5 bg-white rounded">
           <h3>Ingrese el dui para borrar</h3>
        <form action="Eliminar" method="post">
             <label for="txtDui"   >DUI</label>
            <input type="text" class="form-control" name="txtDui" value="" /> 
            <br>
           
            <input type="Submit" class="btn btn-danger" value="Borrar" />
        </form>
              </div>
    </body>
</html>