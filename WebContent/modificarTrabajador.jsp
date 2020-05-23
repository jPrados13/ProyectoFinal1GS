<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="lagatoteca.*" %>
<%@ page import="java.util.ArrayList" %>
<% BDController controladorBD = new BDController();%>
<% ArrayList<Local> locales = controladorBD.dameLocales();
	String dni  = request.getParameter("dni");%>
<% Trabajador trabajador = controladorBD.dameTrabajador(dni); %>
<!DOCTYPE html>
<html>
<head>
	<title>Modificar Trabajador</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleKitty.css">
</head>
<body>
	<div class="nav">
		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<!-- Just an image -->
			<nav class="navbar navbar-light bg-light">
			  <a class="navbar-brand" href="#">
			    <img class="logoNav" src="images/logo.gif" width="100" height="100" alt="logo">
			  </a>
			</nav>
		  <a class="navbar-brand" href="#">La Gatoteca</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="indexAdmin.jsp"><button type="button" class="btn btn-info">IndiceAdmin</button></a>
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
				<h2 class="subtitle"></h2>
		<div class="formulario">
			<form action="operaciones.jsp?tipo=modificarTrabajador" method="post">
			  <div class="form-row">
			  	<input type="hidden" class="option" name="dni" value="<%=trabajador.getDni_trabajador()%>"/>
			    <div class="form-group col-md-6">
			      <label for="nombre">Nombre<span class="required" title="Campo requerido" >*</span></label>
			      <input type="text" class="form-control" required id="nombre" name="nombre" maxlength="20" placeholder="" value="<%=trabajador.getNombre_trabajador()%>">
			    </div>
			  </div>
			  <div class="form-row">
			  	<div class="form-group col-md-6">
			    	<label for="fecha">Fecha Nacimiento<span class="required" title="Campo requerido" >*</span></label>
			    	<input type="date" class="form-control" id="fecha" name="fecha" placeholder="" required value="<%=trabajador.getFecha_nac()%>">
				</div>
			  	<div class="form-group col-md-6">
			      <label for="puesto">Puesto</label>
			      <select id="puesto" name="puesto" class="form-control">
			      	<option selected><%=trabajador.getPuesto()%></option>
			        <option>Auxiliar</option>
			        <option>Dependiente</option>
			        <option>Encargado</option>
			      </select>
			    </div>
			  </div>
			  <div class="form-row">
			  	<div class="form-group col-md-6">
			      <label for="nss">Numero de la seguridad social<span class="required" title="Campo requerido" >*</span></label>
			      <input type="number" required class="form-control" id="nss" name="nss" pattern="[0-9]{12,12}" placeholder="890123456789" value="<%=trabajador.getNumero_Seg_Social()%>">
			    </div>
				<div class="form-group col-md-6">
			      <label for="local">Local</label>
			      <select id="local" name="local" class="form-control">
			        <option selected><%=trabajador.getId_local()%></option>
			        <%for(int i = 0; i < locales.size(); i++) {  %>
			        <option><%=locales.get(i).getId_local()%></option><%} %>
			      </select>
			    </div>
			  </div>
			  
			  <button type="submit" class="btn btn-secondary">Modificar</button>
			</form>
		</div>	
	</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>