<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="lagatoteca.*" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Indice Administrador</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styleGatos.css">
</head>
<body>
	<%//variables
		BDController controladorBD = new BDController();
		//Variables entrada
		String usuario = "";
		String password = "";
		// variables Gatos
		int nChip = 0;
		String nombre_gato = "";
		double edad = 0;
		String sexo = "";
		String fechaEntrada = "";
		String fechaAdopcion = "";
		String dniAdop = "";
		int local = 1;
		String descripcion = "";
		//variables Voluntario
		String dni_Voluntario = ""; 
		String nombre_Voluntario = ""; 
		String fecha_Inscripcion = ""; 
		int telefonoVolun = 0; 
		String distrito = "";
		//Variables local
		String calle= "";
		int telefonoLocal = 0;
		int aforoPers = 0;
		int aforoGatos = 0;
		//Variables Particulares
		String dni_Particular = ""; 
		String nombre_Particular = ""; 
		int telefonoParticular = 0; 
		String residencia = ""; 
		int numero_gatos = 0;	
		//Variables Trabajadores
		String dni_trabajador = ""; 
		String nombre_trabajador = ""; 
		String fecha_nac = ""; 
		String numero_Seg_Social = ""; 
		String puesto = "";
		//Variables Veterinarios
		String dni_veterinario = ""; 
		String nombre_veterinario = ""; 
		int telefono_veterinario = 0; 
		String especialidad = "";
		//Variables socio
		String dni_Socio = "";
		String nombre_Socio= "";
		int telefono_socio = 0;
		String email = "";
		String tipo = "";
		String estado = "";
		//Variables contrato
		int codigo_contrato = 0; 
		String fecha_inicio = ""; 
		String fecha_fin = ""; 
		double presupuesto = 0;
		//Variables visita
		int id_Cita = 0;
		String fecha_cita = "";
		String tratamiento = "";
		int duracion = 0;
		//Variables extra	
		String mensaje = "";
		String operacion="correcta";
		String boton = "indexAdmin";
		
		//Log In the page
		if(request.getParameter("tipo").equalsIgnoreCase("entrar")){
			if(request.getParameter("usuario").equalsIgnoreCase("Alejandra") && request.getParameter("password").equalsIgnoreCase("11255467N")){
				mensaje = "Bienvenido al editor de la base de datos";
				boton = "indexAdmin";	
			}else{
				mensaje = "No tiene acceso a este apartado, Usuario y/o contraseña incorrectos";
				boton = "index";
			}
			
		}
		
		//FOTO GATO
		if (request.getParameter("tipo").equalsIgnoreCase("fotogato")) {
				File file ;
				File file2;
				int maxFileSize = 5000 * 1024;
				int maxMemSize = 5000 * 1024;
					
				String filePath = application.getRealPath("/");
				filePath = filePath.replace("\\", "/");
				 
							 
				String contentType = request.getContentType();
			   if ((contentType.indexOf("multipart/form-data") >= 0)) {
							 
			      DiskFileItemFactory factory = new DiskFileItemFactory();
			      factory.setSizeThreshold(maxMemSize);
			      factory.setRepository(new File("c:\\temp"));
			      ServletFileUpload upload = new ServletFileUpload(factory);
			      upload.setSizeMax( maxFileSize );
			      try{ 
			         List fileItems = upload.parseRequest(request);
			         Iterator i = fileItems.iterator();
			         while ( i.hasNext () ){
						FileItem fi = (FileItem)i.next();
						if ( !fi.isFormField () )  {
						String fieldName = fi.getFieldName();
						String fileName = fi.getName();
						boolean isInMemory = fi.isInMemory();
						long sizeInBytes = fi.getSize();
						System.out.println(filePath + "images/gatos/" + request.getParameter("nChip") + ".jpg");
						file = new File( filePath + "images/gatos/" + request.getParameter("nChip") + ".jpg") ;
						fi.write( file ) ;
						}
					 }		    
				}catch(Exception ex) {
					 System.out.println(ex);
			      }
			 }		
				mensaje="Fotografía asignada correctamente";
		}
		
		//FOTO Local
		if (request.getParameter("tipo").equalsIgnoreCase("fotoLocal")) {
				File file ;
				File file2;
				int maxFileSize = 5000 * 1024;
				int maxMemSize = 5000 * 1024;
					
				String filePath = application.getRealPath("/");
				filePath = filePath.replace("\\", "/");
				 
							 
				String contentType = request.getContentType();
			   if ((contentType.indexOf("multipart/form-data") >= 0)) {
							 
			      DiskFileItemFactory factory = new DiskFileItemFactory();
			      factory.setSizeThreshold(maxMemSize);
			      factory.setRepository(new File("c:\\temp"));
			      ServletFileUpload upload = new ServletFileUpload(factory);
			      upload.setSizeMax( maxFileSize );
			      try{ 
			         List fileItems = upload.parseRequest(request);
			         Iterator i = fileItems.iterator();
			         while ( i.hasNext () ){
						FileItem fi = (FileItem)i.next();
						if ( !fi.isFormField () )  {
						String fieldName = fi.getFieldName();
						String fileName = fi.getName();
						boolean isInMemory = fi.isInMemory();
						long sizeInBytes = fi.getSize();
						System.out.println(filePath + "images/locales/" + request.getParameter("telefonoLocal") + ".jpg");
						file = new File( filePath + "images/locales/" + request.getParameter("telefonoLocal") + ".jpg") ;
						fi.write( file ) ;
						}
					 }		    
				}catch(Exception ex) {
					 System.out.println(ex);
			      }
			 }		
				mensaje="Fotografía asignada correctamente";
		}		
		
		//Baja de Gato Local
		if(request.getParameter("tipo").equalsIgnoreCase("bajagl")){
			if(request.getParameter("chipLocal").equalsIgnoreCase("")){
				mensaje = "El chip del gato no puede quedar vacío, repita la operación de baja";
				operacion = "incorrecta";		
			}
			if(operacion.equalsIgnoreCase("correcta")){
				nChip = Integer.parseInt(request.getParameter("chipLocal"));
				if(controladorBD.existeGato(nChip)){
					controladorBD.bajaGatoLocal(nChip);
					mensaje = "Gato dado de baja con exito";
				}else{
					mensaje = "El numero de chip del gato no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
			
		}
		
		//Baja de gato adoptado
		if(request.getParameter("tipo").equalsIgnoreCase("bajaga")){
			if(request.getParameter("chipAdop").equalsIgnoreCase("")){
				mensaje = "El chip del gato no puede quedar vacío, repita la operación de baja";
				operacion = "incorrecta";		
			}
			if(operacion.equalsIgnoreCase("correcta")){
				nChip = Integer.parseInt(request.getParameter("chipAdop"));
				if(controladorBD.existeGato(nChip)){
					controladorBD.bajaGatoAdop(nChip);
					mensaje = "Gato dado de baja con exito";
				}else{
					mensaje = "El numero de chip del gato no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
			
		}
		
		//Alta de gato Local
		if(request.getParameter("tipo").equalsIgnoreCase("altagl")){
			
			if(request.getParameter("nombre").equalsIgnoreCase("")){
				mensaje = "El nombre del gato no puede quedar vacío, repita la operación de alta";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				nChip = Integer.parseInt(request.getParameter("nChip"));
				if(controladorBD.existeGato(nChip)){
					mensaje = "El numero de chip del gato ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nChip = Integer.parseInt(request.getParameter("nChip"));
					nombre_gato = request.getParameter("nombre");
					edad = Integer.parseInt(request.getParameter("edad"));
					sexo = request.getParameter("sexo");
					descripcion = request.getParameter("descripcion");
					local = Integer.parseInt(request.getParameter("local"));
					fechaEntrada = request.getParameter("fecha");
					
									
					controladorBD.altaGatoLocal(nChip, nombre_gato, edad, sexo, descripcion, fechaEntrada, local);
					mensaje = "Gato dado de alta con exito";
					
					//Reenvio a la página de subida de foto
					response.sendRedirect("formfoto.jsp?tipo=altagato&nChip=" + nChip);
				}
			}

		}
		
		//Alta de gato Adoptado
		if(request.getParameter("tipo").equalsIgnoreCase("altaga")){
			
			if(request.getParameter("nombre").equalsIgnoreCase("")){
				mensaje = "El nombre del gato no puede quedar vacío, repita la operación de alta";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				nChip = Integer.parseInt(request.getParameter("nChip"));
				if(controladorBD.existeGato(nChip)){
					mensaje = "El numero de chip del gato ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nChip = Integer.parseInt(request.getParameter("nChip"));
					nombre_gato = request.getParameter("nombre");
					edad = Integer.parseInt(request.getParameter("edad"));
					sexo = request.getParameter("sexo");
					descripcion = request.getParameter("descripcion");
					local = Integer.parseInt(request.getParameter("local"));
					fechaAdopcion = request.getParameter("fecha");
					dniAdop = request.getParameter("dniAdop");
									
					controladorBD.modificarGatoAdoptado(nChip, nombre_gato, edad, sexo, descripcion, local, fechaAdopcion, dniAdop);
					mensaje = "Gato dado de alta con exito";			
					
					//Reenvio a la página de subida de foto
					response.sendRedirect("formfoto.jsp?tipo=altagato&nChip=" + nChip);
				}
			}

		}
		
		//Modificacion de gato Local
		if(request.getParameter("tipo").equalsIgnoreCase("modifigl")){
			
			if(request.getParameter("nombre").equalsIgnoreCase("")){
				mensaje = "El nombre del gato no puede quedar vacío, repita la operación de modificacion";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				nChip = Integer.parseInt(request.getParameter("nChip"));
				nombre_gato = request.getParameter("nombre");
				edad = Integer.parseInt(request.getParameter("edad"));
				sexo = request.getParameter("sexo");
				descripcion = request.getParameter("descripcion");
				local = Integer.parseInt(request.getParameter("local"));
				fechaEntrada = request.getParameter("fecha");
								
				controladorBD.modificarGatoLocal(nChip, nombre_gato, edad, sexo, descripcion, fechaEntrada, local);
				mensaje = "Gato modificado con exito";			
				
			}

		}		
		//Modificacion de gato adoptado
		if(request.getParameter("tipo").equalsIgnoreCase("modifiga")){
			
			if(request.getParameter("nombre").equalsIgnoreCase("")){
				mensaje = "El nombre del gato no puede quedar vacío, repita la operación de modificacion";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				nChip = Integer.parseInt(request.getParameter("nChip"));
				nombre_gato = request.getParameter("nombre");
				edad = Integer.parseInt(request.getParameter("edad"));
				sexo = request.getParameter("sexo");
				descripcion = request.getParameter("descripcion");
				local = Integer.parseInt(request.getParameter("local"));
				fechaAdopcion = request.getParameter("fecha");
				dniAdop = request.getParameter("dniAdop");
								
				controladorBD.modificarGatoAdoptado(nChip, nombre_gato, edad, sexo, descripcion, local, fechaAdopcion, dniAdop);
				mensaje = "Gato modificado con exito";			
				
			}

		}
		
		//Alta de Local
		if(request.getParameter("tipo").equalsIgnoreCase("altaLocal")){
			
			if(request.getParameter("calle").equalsIgnoreCase("")){
				mensaje = "La calle del local no puede quedar vacía, repita la operación de alta";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				
				calle = request.getParameter("calle");
				telefonoLocal = Integer.parseInt(request.getParameter("tlf"));
				aforoPers = Integer.parseInt(request.getParameter("aforoP"));
				aforoGatos = Integer.parseInt(request.getParameter("aforoG"));
				
				
								
				controladorBD.altaLocal(calle, telefonoLocal, aforoPers, aforoGatos);
				mensaje = "Local dado de alta con exito";
				
				//Reenvio a la página de subida de foto
				response.sendRedirect("formfoto.jsp?tipo=altaLocal&telefonoLocal=" + telefonoLocal);
				
			}

		}
		
		//Baja de Local
		if(request.getParameter("tipo").equalsIgnoreCase("bajaLocal")){
			if(request.getParameter("id_local").equalsIgnoreCase("")){
				mensaje = "El id del local no puede quedar vacío, repita la operación de baja";
				operacion = "incorrecta";		
			}
			if(operacion.equalsIgnoreCase("correcta")){
				local = Integer.parseInt(request.getParameter("id_local"));
				if(controladorBD.existeLocal(local)){
					controladorBD.bajaLocal(local);
					mensaje = "Local dado de baja con exito";
				}else{
					mensaje = "El numero de local no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
			
		}
		
		//Modificacion de Local
		if(request.getParameter("tipo").equalsIgnoreCase("modificarLocal")){
			
			if(request.getParameter("calle").equalsIgnoreCase("")){
				mensaje = "La calle del local no puede quedar vacía, repita la operación de alta";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				local = Integer.parseInt(request.getParameter("id_local"));
				calle = request.getParameter("calle");
				telefonoLocal = Integer.parseInt(request.getParameter("tlf"));
				aforoPers = Integer.parseInt(request.getParameter("aforoP"));
				aforoGatos = Integer.parseInt(request.getParameter("aforoG"));
				
				
								
				controladorBD.modificarLocal(local, calle, telefonoLocal, aforoPers, aforoGatos);
				mensaje = "Local modificado con exito";
						
			}

		}
		
		//Alta de Trabajador
		if(request.getParameter("tipo").equalsIgnoreCase("altaTrabajador")){
			
			if(request.getParameter("nombre").equalsIgnoreCase("")){
				mensaje = "El nombre del trabajador no puede quedar vacío, repita la operación de alta";
				operacion = "incorrecta";				
			}
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_trabajador = request.getParameter("dni");
				if(controladorBD.existeTrabajador(dni_trabajador)){
					mensaje = "El dni del trabajdor ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nombre_trabajador = request.getParameter("nombre");
					fecha_nac = request.getParameter("fecha");
					numero_Seg_Social = request.getParameter("nss");
					puesto = request.getParameter("puesto");
					local = Integer.parseInt(request.getParameter("local"));
					
									
					controladorBD.altaTrabajador(dni_trabajador, nombre_trabajador, fecha_nac, numero_Seg_Social, puesto, local);
					mensaje = "Trabajador dado de alta con exito";
				}			
			}
		}
		
		//Modificacion de trabajador
		if(request.getParameter("tipo").equalsIgnoreCase("modificarTrabajador")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_trabajador = request.getParameter("dni");
				nombre_trabajador = request.getParameter("nombre");
				fecha_nac = request.getParameter("fecha");
				puesto = request.getParameter("puesto");
				local = Integer.parseInt(request.getParameter("local"));
				
								
				controladorBD.modificarTrabajador(dni_trabajador, nombre_trabajador, fecha_nac, puesto, local);
				mensaje = "Trabajador actualizado con exito";					
			}

		}
		
		//Baja de Trabajador
		if(request.getParameter("tipo").equalsIgnoreCase("bajaTrabajador")){
			if(request.getParameter("dni").equalsIgnoreCase("")){
				mensaje = "El dni del trabajador no puede quedar vacío, repita la operación de baja";
				operacion = "incorrecta";		
			}
			if(operacion.equalsIgnoreCase("correcta")){
				dni_trabajador = request.getParameter("dni");
				if(controladorBD.existeTrabajador(dni_trabajador)){
					controladorBD.bajaTrabajador(dni_trabajador);
					mensaje = "Trabajador dado de baja con exito";
				}else{
					mensaje = "El dni del trabajador no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
			
		}
	
		//Alta de Socio
		if(request.getParameter("tipo").equalsIgnoreCase("altaSocio")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_Socio = request.getParameter("dni");
				if(controladorBD.existeSocio(dni_Socio)){
					mensaje = "El dni del socio ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nombre_Socio = request.getParameter("nombre");
					telefono_socio = Integer.parseInt(request.getParameter("tlf"));
					email = request.getParameter("email");
					tipo = request.getParameter("tipo");
					estado = request.getParameter("estado");
					local = Integer.parseInt(request.getParameter("local"));
					
									
					controladorBD.altaSocio(dni_Socio, nombre_Socio, telefono_socio, email, tipo, estado, local);
					mensaje = "Socio dado de alta con exito";
				}			
			}
		}
		
		//Modificacion de socio
		if(request.getParameter("tipo").equalsIgnoreCase("modificarSocio")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_Socio = request.getParameter("dni");
				nombre_Socio = request.getParameter("nombre");
				telefono_socio = Integer.parseInt(request.getParameter("tlf"));
				email = request.getParameter("email");
				tipo = request.getParameter("tipo");
				estado = request.getParameter("estado");
				local = Integer.parseInt(request.getParameter("local"));
				
								
				controladorBD.modificarSocio(dni_Socio, nombre_Socio, telefono_socio, email, tipo, estado, local);
				mensaje = "Socio actualizado con exito";				
			}

		}
		
		//Baja de socio
		if(request.getParameter("tipo").equalsIgnoreCase("bajaSocio")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				dni_Socio = request.getParameter("dni");
				if(controladorBD.existeSocio(dni_Socio)){
					controladorBD.bajaSocio(dni_Socio);
					mensaje = "Socio dado de baja con exito";
				}else{
					mensaje = "El dni del socio no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
		}
		
		//Alta de Voluntario
		if(request.getParameter("tipo").equalsIgnoreCase("altaVoluntario")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_Voluntario = request.getParameter("dni");
				if(controladorBD.existeVoluntario(dni_Voluntario)){
					mensaje = "El dni del voluntario ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nombre_Voluntario = request.getParameter("nombre");
					fecha_Inscripcion = request.getParameter("fecha");				
					telefonoVolun = Integer.parseInt(request.getParameter("tlf"));
					distrito = request.getParameter("distrito");
					local = Integer.parseInt(request.getParameter("local"));
					
									
					controladorBD.altaVoluntario(dni_Voluntario, nombre_Voluntario, fecha_Inscripcion, telefonoVolun, distrito, local);
					mensaje = "Voluntario dado de alta con exito";
				}			
			}
		}
		
		//Modificacion de Voluntario
		if(request.getParameter("tipo").equalsIgnoreCase("modificarVoluntario")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_Voluntario = request.getParameter("dni");
				nombre_Voluntario = request.getParameter("nombre");
				fecha_Inscripcion = request.getParameter("fecha");				
				telefonoVolun = Integer.parseInt(request.getParameter("tlf"));
				distrito = request.getParameter("distrito");
				local = Integer.parseInt(request.getParameter("local"));
				
								
				controladorBD.modificarVoluntario(dni_Voluntario, nombre_Voluntario, fecha_Inscripcion, telefonoVolun, distrito, local);
				mensaje = "Voluntario dado de alta con exito";			
			}

		}
		
		//Baja de Voluntario
		if(request.getParameter("tipo").equalsIgnoreCase("bajaVoluntario")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				dni_Voluntario = request.getParameter("dni");
				if(controladorBD.existeVoluntario(dni_Voluntario)){
					controladorBD.bajaVoluntario(dni_Voluntario);
					mensaje = "Voluntario dado de baja con exito";
				}else{
					mensaje = "El dni del Voluntario no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
		}
		
		//Alta de Particular
		if(request.getParameter("tipo").equalsIgnoreCase("altaParticular")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_Particular = request.getParameter("dni");
				if(controladorBD.existeParticular(dni_Particular)){
					mensaje = "El dni del Particular ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nombre_Particular = request.getParameter("nombre");	
					telefonoParticular = Integer.parseInt(request.getParameter("tlf"));
					residencia = request.getParameter("residencia");
					numero_gatos = Integer.parseInt(request.getParameter("nGatos"));
					
									
					controladorBD.altaParticular(dni_Particular, nombre_Particular, telefonoParticular, residencia, numero_gatos);
					mensaje = "Particular dado de alta con exito";
				}			
			}
		}
		
		//Modificacion de Particular
		if(request.getParameter("tipo").equalsIgnoreCase("modificarParticular")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_Particular = request.getParameter("dni");
				nombre_Particular = request.getParameter("nombre");	
				telefonoParticular = Integer.parseInt(request.getParameter("tlf"));
				residencia = request.getParameter("residencia");
				numero_gatos = Integer.parseInt(request.getParameter("nGatos"));
				
								
				controladorBD.modificarParticular(dni_Particular, nombre_Particular, telefonoParticular, residencia, numero_gatos);
				mensaje = "Particular actualizado con exito";	
			}

		}
		
		//Baja de Particular
		if(request.getParameter("tipo").equalsIgnoreCase("bajaParticular")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				dni_Particular = request.getParameter("dni");
				if(controladorBD.existeParticular(dni_Particular)){
					controladorBD.bajaParticular(dni_Particular);
					mensaje = "Particular dado de baja con exito";
				}else{
					mensaje = "El dni del Particular no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
		}
				
		//Alta de Veterinario
		if(request.getParameter("tipo").equalsIgnoreCase("altaVeterinario")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_veterinario = request.getParameter("dni");
				if(controladorBD.existeVeterinario(dni_veterinario)){
					mensaje = "El dni del Veterinario ya se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
				}else{
					nombre_veterinario = request.getParameter("nombre");	
					telefono_veterinario = Integer.parseInt(request.getParameter("tlf"));
					especialidad = request.getParameter("especialidad");
					
									
					controladorBD.altaVeterinario(dni_veterinario, nombre_veterinario, telefono_veterinario, especialidad);
					mensaje = "Veterinario dado de alta con exito";
				}			
			}
		}
		
		//Modificacion de Veterinario
		if(request.getParameter("tipo").equalsIgnoreCase("modificarVeterinario")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_veterinario = request.getParameter("dni");
				nombre_veterinario = request.getParameter("nombre");	
				telefono_veterinario = Integer.parseInt(request.getParameter("tlf"));
				especialidad = request.getParameter("especialidad");
				
								
				controladorBD.modificarVeterinario(dni_veterinario, nombre_veterinario, telefono_veterinario, especialidad);
				mensaje = "Veterinario actualizado con exito";
			}

		}
		
		//Baja de Veterinario
		if(request.getParameter("tipo").equalsIgnoreCase("bajaVeterinario")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				dni_veterinario = request.getParameter("dni");
				if(controladorBD.existeVeterinario(dni_veterinario)){
					controladorBD.bajaVeterinario(dni_veterinario);
					mensaje = "Veterinario dado de baja con exito";
				}else{
					mensaje = "El dni del Veterinario no se encuentra en la base de datos, repita la operación de baja";
					operacion = "incorrecta";
				}
			}
		}
		
		
		//Alta de Contrato
		if(request.getParameter("tipo").equalsIgnoreCase("altaContrato")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				dni_veterinario = request.getParameter("dniVet");
				dni_Particular = request.getParameter("dniPart");
				if(!controladorBD.existeVeterinario(dni_veterinario)){
					
					mensaje = "El dni del Veterinario no se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
					
				}else if(!controladorBD.existeParticular(dni_Particular)){
					
					mensaje = "El dni del Particular no se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
					
				}else{
					
					fecha_inicio = request.getParameter("fechaIni");	
					fecha_fin = request.getParameter("fechaFin");	
					presupuesto = Double.parseDouble(request.getParameter("presupuesto"));
						
									
					controladorBD.altaContrato(dni_veterinario, dni_Particular, fecha_inicio, fecha_fin, presupuesto);
					mensaje = "Contrato dado de alta con exito";
				}				
			}
		}
		
		//Modificacion de Contrato
		if(request.getParameter("tipo").equalsIgnoreCase("modificarContrato")){
			
			if(operacion.equalsIgnoreCase("correcta")){
				
				codigo_contrato = Integer.parseInt(request.getParameter("codigo"));
				dni_veterinario = request.getParameter("dniVet");
				dni_Particular = request.getParameter("dniPart");
				fecha_inicio = request.getParameter("fechaIni");	
				fecha_fin = request.getParameter("fechaFin");	
				presupuesto = Double.parseDouble(request.getParameter("presupuesto"));
				
								
				controladorBD.modificarContrato(codigo_contrato, dni_veterinario, dni_Particular, fecha_inicio, fecha_fin, presupuesto);
				mensaje = "Veterinario actualizado con exito";
			}

		}
		
		/*
		//Variables visita
		int id_Cita = 0;
		String fecha_cita = "";
		String tratamiento = "";
		int duracion = 0;*/

				
		//Alta de Visita
		if(request.getParameter("tipo").equalsIgnoreCase("altaVisita")){
					
			if(operacion.equalsIgnoreCase("correcta")){
						
				dni_veterinario = request.getParameter("dniVet");
				nChip = Integer.parseInt(request.getParameter("nChip"));
				if(!controladorBD.existeVeterinario(dni_veterinario)){
							
					mensaje = "El dni del Veterinario no se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
							
				}else if(!controladorBD.existeGatoLocal(nChip)){
							
					mensaje = "El chip del gato no se encuentra en la base de datos, repita la operación de alta";
					operacion = "incorrecta";
							
				}else{
							
					fecha_cita = request.getParameter("fecha");	
					tratamiento = request.getParameter("tratamiento");	
					duracion = Integer.parseInt(request.getParameter("duracion"));
								
											
					controladorBD.altaVisita(nChip, dni_veterinario, fecha_cita, tratamiento, duracion);
					mensaje = "Visita dado de alta con exito";
				}				
			}
		}
				
		%>
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
		        <a class="nav-link" href="indexAdmin.jsp"><button type="button" class="btn btn-primary">IndiceAdmin</button><span class="sr-only">(current)</span></a>
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
		<div class="resume">
			<hr>
			<h2 class="subtitle"><%=mensaje %></h2>
			<br>
			<a href="<%=boton %>.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block" >Continuar</button></a>
			<hr>
		</div>
	</div>
	

	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>