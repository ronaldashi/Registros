<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registros</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h1 style="text-align:center">Historial</h1>
	<br><br/>
	<table class="table table-dark table-striped">
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>Tipo Documento</th>
			<th>Numero Documento</th>
			<th>Categoria</th>
			<th>Tarjeta?</th>
			<th>Fecha Registro</th> 
			<th>Actions</th>
		</tr>
		<c:forEach items="${registross}" var = "registros">
			<c:url var="editlink" value="getSingleregistros">
				<c:param name="registrosid" value="${registros.id}" />
			</c:url>
			<c:url var="deletelink" value="deleteprocess">
				<c:param name="registrosid" value="${registros.id}" />
			</c:url>
			<tr>
				<td>${registros.id}</td>
				<td>${registros.nombre}</td>
				<td>${registros.tipoDocumento}</td>
				<td>${registros.numDocumento}</td>
				<td>${registros.categoria}</td>
				<td>${registros.tarjeta}</td>
				<td>${registros.fechaRegistro}</td>
				<td>
					<a href="${editlink}" class="btn btn-success">Editar</a> | <a href="${deletelink}" class="btn btn-danger">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		
		<br><br/>
		<button onclick="window.location.href='openAddregistrosForm'" class="btn btn-primary">Agregar registro</button>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</body>
</html>