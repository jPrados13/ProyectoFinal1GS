<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="lagatoteca.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
	<title>Indice Administrador</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleGatos.css">
</head>
<body>
	<div class="nav">
		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<!-- Just an image -->
			<nav class="navbar navbar-light bg-light">
			  <a class="navbar-brand" href="index.jsp">
			    <img class="logoNav" src="images/logo.gif" width="100" height="100" alt="logo">
			  </a>
			</nav>
		  <a class="navbar-brand" href="index.jsp">La Gatoteca</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href=""><button type="button" class="btn btn-primary">IndiceAdmin</button><span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="gatos.jsp"><button type="button" class="btn btn-info">Gatos</button></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="adopcion.jsp"><button type="button" class="btn btn-info">Adopta</button></a>	     
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="kittysitters.jsp"><button type="button" class="btn btn-info">KittySitters</button></a>
		      </li>
		      <li class="nav-item">
		      	<a class="nav-link" href="hazteSocio.jsp"><button type="button" class="btn btn-info">Hazte Socio</button></a>
		      </li>		
		      <li class="nav-item">
		      	<a class="nav-link" href="logIn.jsp"><button type="button" class="btn btn-info">LogIn</button></a>
		      </li>	 
		    </ul>
		  </div>
		</nav>
		<!-- Fin barra de nav-->
	</div>
	<div class="mainContainer">
		<br>
		<a href="altaGL.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Gato Local</button></a>
		<hr>
		<a href="altaGA.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Gato Adoptado</button></a>
		<hr>
		<a href="modificarGatos.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificar Gato</button></a>
		<hr>
		<a href="bajaGatos.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Baja Gato</button></a>
		<hr>
		<a href="altaLocal.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Local</button></a>
		<hr>
		<a href="listaLocales.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificacion o dar de baja Local</button></a>
		<hr>
		<a href="altaTrabajador.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Trabajador</button></a>
		<hr>
		<a href="listaTrabajadores.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificacion o Baja Trabajador</button></a>
		<hr>
		<a href="altaContrato.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Contratacion</button></a>
		<hr>
		<a href="listaContratos.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificación o Baja Contrato</button></a>
		<hr>
		<a href="altaVisita.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Visita Veterinaria</button></a>
		<hr>
		<a href="listaVisitas.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificacion o Baja Visita Veterinaria</button></a>
		<hr>
		<a href="altaVoluntario.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Voluntario</button></a>
		<hr>
		<a href="listaVoluntarios.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificacion o Baja Voluntario</button></a>
		<hr>
		<a href="altaSocio.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Socio</button></a>
		<hr>
		<a href="listaSocios.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificaion o Baja Socio</button></a>
		<hr>
		<a href="altaVeterinario.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Alta Veterinario</button></a>
		<hr>
		<a href="listadoVeterinarios.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block">Modificacion o Baja Veterinario</button></a>
		
	</div>
	

	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>