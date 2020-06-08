<%-- 
    Document   : actualizar
    Created on : 06-07-2020, 10:24:40 AM
    Author     : Palacios
--%>

<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar datos</title>
        <link rel="stylesheet" type="text/css" href="cssboost/bootstrap.css">
    </head>
    <body class="bg-light">
   <div class="p-3 mb-2 bg-dark text-white " >    
                  
   <h1>Actualizar datos </h1>
   </div>
       <div class=" container shadow-lg p-3 mb-5 bg-white rounded">  
     <form class="form-group" action="Modificar.do" method="post">
        <h3>Edite el registro por medio de DUI</h3>
	<label>DUI</label>
	<input type="text" class="form-control" name="txtDui"  >		
	<label>Nombre</label>
	<input type="text" class="form-control" name="txtNombres" >	
	<label>Apellido</label>
	<input type="text" class="form-control" name="txtApellidos"  >
	                       
       <input type="Submit" class="btn btn-info" value="Guardar" > 
        <a class="btn btn-secondary" href="index.jsp">Volver a inicio</a>
	</form>
          
         </div>
    </body>
</html>