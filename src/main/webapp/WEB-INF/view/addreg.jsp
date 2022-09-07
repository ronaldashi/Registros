<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Registros</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h1 style="text-align:center">Agregar Registro</h1>
	<br>
	<div class="row">

		<form id="registros" action="registrosprocess" method="post">
			<input id="id" name="id" type="hidden" value="0">
			<div class="row">
			<div class="col">
			Nombre Completo: <input id="nombre" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre completo" required><br>
			</div>	
			<div class="col">
			Tipo Documento: <select id="tipoDocumento" name="tipoDocumento" class="form-control" type="text" >
				
    			<option value="CC">CC</option>
   				 <option value="CE">CE</option>
    			<option value="Pasaporte">Pasaporte</option><br>
				</select>
			</div></div>
	
			<div class="row">
			<div class="form-group col-md-6">
			Numero Documento: <input id="numDocumento" name="numDocumento" class="form-control" type="number" placeholder="Ingrese el numero de documento"><br>
			</div>
	
			<div class="form-group col-md-6">
			Categoria : <select id="categoria" name="categoria" class="form-control" type="text" value="">
				
    			<option value="Moda">Moda</option>
   				 <option value="Mercado">Mercado</option>
    			<option value="Ahorro">Ahorro</option>
				<option value="Diversión">Diversion</option>
  			</select><br>
			</div>
			</div>
			<div class="row">
			<div class="form-group col-md-6">
			Tarjeta? : <select id="tarjeta" name="tarjeta" class="form-control" type="text" value="">
				
    			<option value="1">Si</option>
   				 <option value="0">No</option>
    			
  			</select>
			
				<br>
			</div>
			<br>
			<div class="form-group col-md-6">
				<br>
				<div class='input-group date' id='datetimepicker1'>
			Fecha Registro : 	<input id="fechaRegistro" class="form-control" name="fechaRegistro" placeholder="YYYY-MM-DD" type="datetime-local" value=""></div>
		</div></div>
		</div>
			<button type="submit" class="btn btn-primary">Agregar registro</button>
		</form>
	
	
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>