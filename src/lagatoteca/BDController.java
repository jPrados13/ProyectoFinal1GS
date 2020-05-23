package lagatoteca;


import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode;

/**
 * Esta clase se encarga de controlar las interacciones de la página web con la base de datos
 *
 * @author Jesus
 *
 */

public class BDController {
	//Declaramos un objeto de tipo Connection para establecer la conexion con la base de datos
	private Connection conexion;
	//Constructor vacío
	public BDController(){
		try {
			//Iniciamos la conexion con la config de acceso
			
				try {
					Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			this.conexion=DriverManager.getConnection("jdbc:mysql://localhost/lagatoteca","root","");
					
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en constructor BDController: " + e.getMessage());
		}
	}
			
	public Connection getConexion() {
		return conexion;
	}
	
	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	
		
	}
	
	/**
	 * Metodo que devuelve el listado de gatos que hay en el local actualmente
	 * @return Un arraylist de objetos "Gato" con los diferentes gatos que hay en el local
	 */
	
	//Metodo para listado de Gatos en el Local
	public ArrayList<Gato>dameGatosLocal(){
		ArrayList<Gato> gatos = new ArrayList<Gato>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from gatos_local";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				gatos.add(new Gato(String.valueOf((rs.getInt("Numero_chip_GL"))), rs.getString("Nombre_GL"), rs.getDouble("edad"), rs.getString("sexo"), rs.getString("descripcion"), rs.getInt("id_local"), rs.getString("Fecha_entrada")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame gatosLocal: " + e.getMessage());
		}
		
		return gatos;
	}
	
	/**
	 * Metodo que devuelve el listado de gatos que han sido adoptados de la gatoteca
	 * @return Un arraylist de objetos "Gato" con los diferentes gatos que han sido adoptados
	 */
		
	//Metodo para listado de Gatos ya adoptados
	public ArrayList<Gato> dameGatosAdoptados(){
		ArrayList<Gato> gatos = new ArrayList<Gato>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from gatos_adoptados";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				gatos.add(new Gato(String.valueOf((rs.getInt("Numero_chip_GA"))), rs.getString("Nombre_GA"), rs.getDouble("edad"), rs.getString("sexo"), rs.getString("descripcion"), rs.getInt("id_local"), rs.getString("Fecha_Adopcion"), rs.getString("Dni_Socio")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame gatosAdoptados: " + e.getMessage());
		}
		return gatos;
	}
	
	/**
	 * Metodo que devuelve el listado de gatos
	 * @return Un arraylist de objetos "Gato" con todos los gatos que han pasado por el local
	 */
	
	//Método para obtener todos los gatos de la base de datos
	public ArrayList<Gato> dameGatos(){
		
		ArrayList<Gato> gatos = new ArrayList<Gato>();

		gatos.addAll(dameGatosLocal());
		gatos.addAll(dameGatosAdoptados());
		
		return gatos;
	}	
	
	/**
	 * Método que devuelve la informacion de un gato en el local 
	 * @param nChip Este parametro será el numero del chip del gato, algo que es único para cada gato
	 * @return un objeto de tiop Gato con la información del gato con ese numero de chip
	 */
	
	//Método para obtener solo uno de los gatos del local pasando el numero de chip por parametro
	public Gato dameGatoLocal(int nChip){
		
		Gato Gato = new Gato();
		
		try {
			String cadena = "select * from gatos_local where Numero_chip_GL = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setInt(1, nChip);
			ResultSet rs = consultaPre.executeQuery();
			while(rs.next()) {
				Gato = new Gato(String.valueOf((rs.getInt("Numero_chip_GL"))), rs.getString("Nombre_GL"), rs.getDouble("edad"), rs.getString("sexo"), rs.getString("descripcion"), rs.getInt("id_local"), rs.getString("Fecha_entrada"));
			}
			consultaPre.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error en dame GatoLocal: " + e.getMessage());
		}
		
		return Gato;
	}
	
	/**
	 * Método que devuelve la informacion de un gato adoptado 
	 * @param nChip Este parametro será el numero del chip del gato, algo que es único para cada gato
	 * @return un objeto de tiop Gato con la información del gato con ese numero de chip
	 */
	
	//Método para obtener solo uno de los gatos adoptados pasando el numero de chip por parametro
	public Gato dameGatoAdoptado(int nChip){
		Gato Gato = new Gato();
		
		try {
			String cadena = "select * from gatos_adoptados where Numero_chip_GA = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setInt(1, nChip);
			ResultSet rs = consultaPre.executeQuery();
			while(rs.next()) {
				Gato = new Gato(String.valueOf((rs.getInt("Numero_chip_GA"))), rs.getString("Nombre_GA"), rs.getDouble("edad"), rs.getString("sexo"), rs.getString("descripcion"), rs.getInt("id_local"), rs.getString("Fecha_Adopcion"), rs.getString("Dni_Socio"));
			}
			consultaPre.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error en dame GatoAdoptado: " + e.getMessage());
		}
		
		return Gato;
	}
	
	/**
	 * Metodo para añadir un gato del local a la base de datos
	 * @param nChip El numero de chip del gato 
	 * @param nombre El nombre del gato
	 * @param edad la edad del gato
	 * @param sexo El sexo del gato
	 * @param descripcion Una descripcion del gato (Datos de interes para el adoptante)
	 * @param fechaEntrada La fecha en la que se incorpora al local
	 * @param id_local El código del local al que se incorpora
	 */
	
	//Método para añadir un gato local a la base de datos
	public void altaGatoLocal(int nChip, String nombre, double edad, String sexo, String descripcion, String fechaEntrada, int id_local){
		
		String cadenaSQL = "Insert gatos_local values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setInt(1, nChip);
			miStatement.setString(2, nombre);
			miStatement.setDouble(3, edad);
			miStatement.setString(4, sexo);
			miStatement.setString(5, descripcion);
			miStatement.setString(6, fechaEntrada);
			miStatement.setInt(7, id_local);
			
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de GatoLocal: " + e.getMessage());
		}
	}
	
	/**
	 * Metodo paara añadir un gato adoptado a la base de datos 
	 * @param nChip Número del chip del gato		
	 * @param nombre Nombre del gato
	 * @param edad Edad del gato
	 * @param sexo Sexo del gato
	 * @param descripcion Descripción del gato (Datos de interes para el adoptante)
	 * @param id_local Código del local donde se adoptó el gato	
	 * @param fechaAdop Fecha en la que se adoptó el gato
	 * @param dniAdoptante Dni del adoptante del gato
	 */
	//Método para añadir un gato adoptado a la base de datos
	public void altaGatoAdoptado(int nChip, String nombre, double edad, String sexo, String descripcion, int id_local, String fechaAdop, String dniAdoptante){
		
		String cadenaSQL = "Insert gatos_Adoptados values (?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setInt(1, nChip);
			miStatement.setString(2, nombre);
			miStatement.setDouble(3, edad);
			miStatement.setString(4, sexo);
			miStatement.setString(5, descripcion);
			miStatement.setString(6, fechaAdop);
			miStatement.setInt(7, id_local);
			miStatement.setString(8, dniAdoptante);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de GatoAdoptado: " + e.getMessage());
		}
	}
	
	/**
	 * Metodo para eliminar un gato del local de la base de datos
	 * @param cod_Gato Este parametro será el Número de chip del gato
	 */
	
	//Método para borrar un gato local de la base de datos
	public void bajaGatoLocal(int cod_Gato){
        try {
            String sql = "Delete from gatos_local where Numero_chip_GL = ?";
            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
            miStatement.setInt(1, cod_Gato);
            miStatement.executeUpdate();


        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("Error en bajaGatoLocal : " + e.getMessage());
        }
    }
	
	/**
	 * Metodo para eliminar un gato adoptado de la base de datos
	 * @param cod_Gato Este parametro será el Número de chip del gato
	 */
	
	//Método para borrar un gato adoptado de la base de datos
	public void bajaGatoAdop(int cod_Gato){
        try {
            String sql = "Delete from gatos_adoptados where Numero_chip_GA = ?";
            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
            miStatement.setInt(1, cod_Gato);
            miStatement.executeUpdate();


        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("Error en bajaGatoAdoptado : " + e.getMessage());
        }
    }
	
	/**
	 * Método para saber si hay un gato presente en la base de datos 
	 * @param cod_Gato Este parametro será el Número de chip del gato
	 * @return Devuelve una respuesta de verdadero en caso de que esté o falso en caso contrario
	 */
	
	//Método para saber si existe un gato en la base de datos
	public boolean existeGato(int cod_Gato) {
		boolean existe = false;
		 try {
	            String sql = "select * from gatos_local where Numero_chip_GL = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setInt(1, cod_Gato);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();


	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe GatoLocal : " + e.getMessage());
	        }
		 
		 try {
	            String sql = "select * from gatos_adoptados where Numero_chip_GA = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setInt(1, cod_Gato);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();


	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe GatoAdoptado : " + e.getMessage());
	        }
		 return existe;
	}
	
	
	/**
	 * Método para saber si hay un gato en el local presente en la base de datos 
	 * @param cod_Gato Este parametro será el Número de chip del gato
	 * @return Devuelve una respuesta de verdadero en caso de que esté o falso en caso contrario
	 */
	//Método para saber si existe un gato Local en la base de datos
	public boolean existeGatoLocal(int cod_Gato) {
		boolean existe = false;
		 try {
	            String sql = "select * from gatos_local where Numero_chip_GL = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setInt(1, cod_Gato);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();


	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe GatoLocal : " + e.getMessage());
	        }
		 
		 return existe;
		 
	}
	
	/**
	 * Método para saber si hay un gato adoptado presente en la base de datos 
	 * @param cod_Gato Este parametro será el Número de chip del gato
	 * @return Devuelve una respuesta de verdadero en caso de que esté o falso en caso contrario
	 */
	//Método para saber si existe un gato Adoptado en la base de datos
	public boolean existeGatoAdoptado(int cod_Gato) {
		 boolean existe = false;
		 try {
	            String sql = "select * from gatos_adoptados where Numero_chip_GA = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setInt(1, cod_Gato);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();


	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe GatoAdoptado : " + e.getMessage());
	        }
		 return existe;
	}
	
	/**
	 * Método para modificar una entrada de un gato del local en la base de datos
	 * @param cod_Gato Este parámetro será la clave para identificar el gato el cual se quiere modificar
	 * @param nombre Nombre nuevo del gato o el mismo en caso de no querer modificarlo
	 * @param edad Nueva edad del gato o la misma en caso de no querer modificarla
	 * @param sexo Nuevo sexo del gato o el mismo en caso de no querer modificarlo
	 * @param descripcion Nueva descripcion del gato o la misma en caso de no querer modificarla
	 * @param fechaEntrada Nueva fecha de entrada o la misma en caso de no quere modificarla
	 * @param id_local Código del nuevo local o el mismo en caso de no querer modificarlo
	 */
	//Método para modificar un gato local
	public void modificarGatoLocal(int cod_Gato, String nombre, double edad, String sexo, String descripcion, String fechaEntrada, int id_local) {
		try {
            String sql = "UPDATE gatos_local SET Nombre_GL = ?, Edad = ?, Sexo = ? , Descripcion = ? , Fecha_entrada = ? , ID_Local  = ?  WHERE Numero_chip_GL=?";
            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
			miStatement.setString(1, nombre);
			miStatement.setDouble(2, edad);
			miStatement.setString(3, sexo);
			miStatement.setString(4, descripcion);
			miStatement.setString(5, fechaEntrada);
			miStatement.setInt(6, id_local);
            miStatement.setInt(7, cod_Gato);
            
            miStatement.executeUpdate();
			miStatement.close();

        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("Error en modificar GatoLocal : " + e.getMessage());
        }
	}
	
	/**
	 * Método para modificar una entrada de un gato del local en la base de datos
	 * @param cod_Gato Este parámetro será la clave para identificar el gato el cual se quiere modificar
	 * @param nombre Nombre nuevo del gato o el mismo en caso de no querer modificarlo
	 * @param edad Nueva edad del gato o la misma en caso de no querer modificarla
	 * @param sexo Nuevo sexo del gato o el mismo en caso de no querer modificarlo
	 * @param descripcion Nueva descripcion del gato o la misma en caso de no querer modificarla
	 * @param id_local Código del nuevo local o el mismo en caso de no querer modificarlo
	 * @param fechaAdop Nueva fecha de adopcion o la misma en caso de no quere modificarla
	 * @param dniAdoptante Nuevo DNI del adoptante o el mismo en caso de no querer modificarlo
	 */
	//Método para modificar un gato Adoptado
	public void modificarGatoAdoptado(int cod_Gato, String nombre, double edad, String sexo, String descripcion, int id_local, String fechaAdop, String dniAdoptante) {
			try {
	            String sql = "UPDATE gatos_local SET Nombre_GA = ?, Edad = ?, Sexo = ? , Descripcion = ? , Fecha_adopcion = ? , ID_Local  = ?, DNI_Socio = ?  WHERE Numero_chip_GA=?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
				miStatement.setString(1, nombre);
				miStatement.setDouble(2, edad);
				miStatement.setString(3, sexo);
				miStatement.setString(4, descripcion);
				miStatement.setString(5, fechaAdop);
				miStatement.setInt(6, id_local);
				miStatement.setString(7, dniAdoptante);
	            miStatement.setInt(8, cod_Gato);
	            
	            miStatement.executeUpdate();
				miStatement.close();

	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en modificar GatoLocal : " + e.getMessage());
	        }
		}
	
	
	/**
	 * Método para obtener un listado de locales
	 * @return Devuelve un arrayList de locales con los datos de todos ellos
	 */

	//Metodo para listado de Locales
	public ArrayList<Local>dameLocales(){
		ArrayList<Local> locales = new ArrayList<Local>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from local";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				locales.add(new Local(rs.getInt("id_local"), rs.getString("calle"), rs.getInt("telefono"), rs.getInt("Aforo_Personas"), rs.getInt("Aforo_Gatos")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Locales: " + e.getMessage());
		}
		
		return locales;
	}
	
	
	/**
	 * Método para obtener los datos de un local en especifico
	 * @param id_local Este parámeto indicará el código del local concreto del cual queremos obtener la información
	 * @return Decuelve un objeto de tipo local con la información del local requerido
	 */
	//Metodo para obtener un Local
	public Local dameLocal(int id_local){
		Local local = new Local();
		try {
			String cadena = "select * from local where id_local = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setInt(1, id_local);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				local = new Local(rs.getInt("id_local"), rs.getString("calle"), rs.getInt("telefono"), rs.getInt("Aforo_Personas"), rs.getInt("Aforo_Gatos"));
			}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Local: " + e.getMessage());
		}
		
		return local;
	}
		
	/**
	 * Método para dar de alta un local en la base de datos
	 * @param calle Calle en la que se encuentra ubicado el local
	 * @param telefono Teléfono de contacto del local
	 * @param aforoPers Aforo máximo de personas dentro del local
	 * @param aforoGatos Aforo máximo de gatos dentro del local
	 */
	//Metodo para añadir un local a la base de datos
	public void altaLocal(String calle, int telefono, int aforoPers, int aforoGatos) {
		
		String cadenaSQL = "Insert into local (calle, telefono, Aforo_Personas, Aforo_gatos) values (?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, calle);
			miStatement.setInt(2, telefono);
			miStatement.setInt(3, aforoPers);
			miStatement.setInt(4, aforoGatos);			
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de Local: " + e.getMessage());
		}
	}
	
	
	/**
	 * Método para modificar los datos de un local 
	 * @param id_local Este parámetro indicará el local a modificar
	 * @param calle La nueva calle del local o en caso de no querer modificarla la misma
	 * @param telefono El nuevo teléfono del local o en caso de no querer modificarlo el mismo
	 * @param aforoPers El nuevo aforo de personas del local o en caso de querer modificarlo el mismo
	 * @param aforoGatos El nuevo aforo de gatos del local o en caso de no querer modificarlo el mismo
	 */
	//Metodo para añadir un local a la base de datos
	public void modificarLocal(int id_local, String calle, int telefono, int aforoPers, int aforoGatos) {
		
		String cadenaSQL = "UPDATE local SET calle = ?, telefono = ?, Aforo_Personas = ?, Aforo_gatos = ? WHERE ID_local = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, calle);
			miStatement.setInt(2, telefono);
			miStatement.setInt(3, aforoPers);
			miStatement.setInt(4, aforoGatos);	
			miStatement.setInt(5, id_local);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificación de Local: " + e.getMessage());
		}
	}

	/**
	 * Método para borrar un local de la base de datos
	 * @param id_local parametro para identificar el local a borrar
	 */
	//Método para borrar un local de la base de datos
	public void bajaLocal(int id_local){
	       try {
	           String sql = "Delete from local where id_local = ?";
	           PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	           miStatement.setInt(1, id_local);
	           miStatement.executeUpdate();

        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("Error en baja Local : " + e.getMessage());
        }
    }

	/**
	 * Método para saber si existe un local en la base de datos
	 * @param id_local parametro para identificar el local que se desea buscar
	 * @return devuelve verdadero si el local está en la base de datos y false si sucede lo contrario
	 */
	//Método para saber si existe un local en la base de datos
	public boolean existeLocal(int id_local) {
		boolean existe = false;
		 try {
	            String sql = "select * from local where id_local = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	           miStatement.setInt(1, id_local);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();

	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe GatoLocal : " + e.getMessage());
	        }
		 return existe;
	}

	/**
	 * Metodo para obtener un listado de trabajadores
	 * @return devuelve una arrayList con todos los trabajadores y su información
	 */
	//Metodo para listado de trabajadores
	public ArrayList<Trabajador>dameTrabajadores(){
		ArrayList<Trabajador> trabajadores = new ArrayList<Trabajador>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from trabajadores";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				trabajadores.add(new Trabajador(rs.getString("Dni_trabajador"), rs.getString("Nombre_trabajador"), rs.getString("fecha_nac"), rs.getString("Numero_Seg_Social"), rs.getString("Puesto"), rs.getInt("ID_Local")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Trabajadores: " + e.getMessage());
		}
		
		return trabajadores;
	}

	/**
	 * Método para obtener la información de un trabajador
	 * @param dni_trabajador parametro para identificar el trabajador
	 * @return devuelve toda la infromación referente a ese trabajador
	 */
	//Metodo para obtener un trabajador
	public Trabajador dameTrabajador(String dni_trabajador){
		Trabajador trabajador = new Trabajador();
		try {
			String cadena = "select * from trabajadores where dni_trabajador = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, dni_trabajador);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				trabajador = new Trabajador(rs.getString("Dni_trabajador"), rs.getString("Nombre_trabajador"), rs.getString("fecha_nac"), rs.getString("Numero_Seg_Social"), rs.getString("Puesto"), rs.getInt("ID_Local"));
			}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Trabajador: " + e.getMessage());
		}
		
		return trabajador;
	}
	
	/**
	 * Método para añadir un trabajador a la base de datos
	 * @param dni_trabajador
	 * @param nombre_trabajador
	 * @param fecha_nac
	 * @param numero_Seg_Social
	 * @param puesto
	 * @param id_local
	 */
	//Método para añadir un trabajador
	public void altaTrabajador(String dni_trabajador, String nombre_trabajador, String fecha_nac, String numero_Seg_Social, String puesto, int id_local) {
		
		String cadenaSQL = "Insert into Trabajadores values (?,?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_trabajador);
			miStatement.setString(2, nombre_trabajador);
			miStatement.setString(3, fecha_nac);
			miStatement.setString(4, numero_Seg_Social);
			miStatement.setString(5, puesto);
			miStatement.setInt(6, id_local);			
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de trabajador: " + e.getMessage());
		}
	}
	
	/**
	 * Método para modificar un trabajador de la base de datos pasandole por parametro los nuevos datoso los mismos en caso de no querer modificar alguno
	 * @param dni_trabajador
	 * @param nombre_trabajador
	 * @param fecha_nac
	 * @param puesto
	 * @param id_local
	 */
	//Metodo para modificar trabajador
	public void modificarTrabajador (String dni_trabajador, String nombre_trabajador, String fecha_nac, String puesto, int id_local) {
		
		String cadenaSQL = "Update Trabajadores SET Nombre_trabajador = ?, fecha_nac = ?, Puesto = ?, id_local = ? WHERE Dni_trabajador = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, nombre_trabajador);
			miStatement.setString(2, fecha_nac);
			miStatement.setString(3, puesto);
			miStatement.setInt(4, id_local);
			miStatement.setString(5, dni_trabajador);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificar trabajador: " + e.getMessage());
		}
		
	}
	
	/**
	 * Método para dar de baja un trabajador
	 * @param dni_trabajador El dni para elegir el trabajador a dar de baja
	 */
	//Método para dar de baja un trabajador
	public void bajaTrabajador (String dni_trabajador) {
		try {
	          String sql = "Delete from trabajadores where dni_trabajador = ?";
	          PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	          miStatement.setString(1, dni_trabajador);
	          miStatement.executeUpdate();

     } catch (Exception e) {
         // TODO: handle exception
         System.out.println("Error en baja trabajador : " + e.getMessage());
     }
	}

	/**
	 * Método para saber si existe un trabajador en la base de datos
	 * @param dni_trabajador El dni del trabajador en particular
	 * @return verdadero si existe en la base y falso si no
	 */
	//Método para saber si existe un trabajador en la base de datos
	public boolean existeTrabajador(String dni_trabajador) {
		boolean existe = false;
		 try {
	            String sql = "select * from trabajadores where dni_trabajador = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setString(1, dni_trabajador);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();

	        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe Trabajador : " + e.getMessage());
	        }
		 return existe;
	}

	
	/**
	 * Método que devuelve un listado de los voluntarios
	 * @return Devuelve un arrayList con la información de todos los voluntarios
	 */
	//Metodo para listado de voluntarios
	public ArrayList<Voluntario>dameVoluntarios(){
		ArrayList<Voluntario> voluntarios = new ArrayList<Voluntario>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from voluntarios";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				voluntarios.add(new Voluntario(rs.getString("Dni_Voluntario"), rs.getString("Nombre_Voluntario"), rs.getString("fecha_Inscripcion"),  rs.getInt("telefono"), rs.getString("distrito"), rs.getInt("ID_Local")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Voluntarios: " + e.getMessage());
		}
		
		return voluntarios;
	}
	
	/**
	 * Metodo que devuelve la información de un voluntario en particular
	 * @param dni_Voluntario el dni del voluntario el cual queremos consultar
	 * @return Un objeto Voluntario con la información requerida
	 */
	//Metodo para obtener un voluntario
	public Voluntario dameVoluntario(String dni_Voluntario){
		Voluntario voluntario = new Voluntario();
		try {
			String cadena = "select * from Voluntarios where dni_Voluntario = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, dni_Voluntario);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
			voluntario = new Voluntario(rs.getString("Dni_Voluntario"), rs.getString("Nombre_Voluntario"), rs.getString("fecha_Inscripcion"),  rs.getInt("telefono"), rs.getString("distrito"), rs.getInt("ID_Local"));
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Voluntario: " + e.getMessage());
		}
		
		return voluntario;
	}
	
	
	/**
	 * Método para añadir un voluntario a la base de datos	
	 * @param dni_Voluntario
	 * @param nombre_Voluntario
	 * @param fecha_Inscripcion
	 * @param telefono
	 * @param distrito
	 * @param id_local
	 */
	//Método para añadir un voluntario
	public void altaVoluntario(String dni_Voluntario, String nombre_Voluntario, String fecha_Inscripcion, int telefono, String distrito, int id_local) {
		
		String cadenaSQL = "Insert into Voluntarios values (?,?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_Voluntario);
			miStatement.setString(2, nombre_Voluntario);
			miStatement.setString(3, fecha_Inscripcion);
			miStatement.setInt(4, telefono);	
			miStatement.setString(5, distrito);
			miStatement.setInt(6, id_local);			
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de Voluntario: " + e.getMessage());
		}
	}
	
	
	/**
	 * Método para modificar un voluntario concreto, se pasa como parametro el dni del mismo y los datos que se quieren cambiar, en caso de no querer cambiar alguno se pasa el mismo que teniamos antes
	 * @param dni_Voluntario 
	 * @param nombre_Voluntario
	 * @param fecha_Inscripcion
	 * @param telefono
	 * @param distrito
	 * @param id_local
	 */
	//Método para modificar un voluntario
	public void modificarVoluntario(String dni_Voluntario, String nombre_Voluntario, String fecha_Inscripcion, int telefono, String distrito, int id_local) {
		
		String cadenaSQL = "Update voluntarios SET Nombre_Voluntario = ?, fecha_Inscripcion = ?, telefono = ?, distrito = ?, id_local = ? WHERE Dni_Voluntario = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, nombre_Voluntario);
			miStatement.setString(2, fecha_Inscripcion);
			miStatement.setInt(3, telefono);	
			miStatement.setString(4, distrito);
			miStatement.setInt(5, id_local);	
			miStatement.setString(6, dni_Voluntario);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificacion de Voluntario: " + e.getMessage());
		}
	}
	
	
	/**
	 * Método para dar de baja un voluntario
	 * @param dni_voluntario El dni del voluntatio que queremos dar de baja
	 */
	//Metodo para dar de baja un voluntario
	public void bajaVoluntario (String dni_voluntario) {
		
		try {
		         String sql = "Delete from voluntarios where dni_voluntario = ?";
		         PreparedStatement miStatement = this.conexion.prepareStatement(sql);
		         miStatement.setString(1, dni_voluntario);
		         miStatement.executeUpdate();
	
	     } catch (Exception e) {
	         // TODO: handle exception
	         System.out.println("Error en baja voluntario : " + e.getMessage());
	     }
	}
	
	
	/**
	 * Método para comprobar si un voluntario existe en la base de datos
	 * @param dni_Voluntario El dni del voluntatio que queremos saber si existe
	 * @return Verdadero en caso de que exista, falso en caso contrario
	 */
	//Método para saber si existe un voluntario en la base de datos
	public boolean existeVoluntario(String dni_Voluntario) {
		boolean existe = false;
		 try {
	           String sql = "select * from voluntarios where dni_Voluntario = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setString(1, dni_Voluntario);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();
		        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe Voluntario : " + e.getMessage());
	        }
		 return existe;
	}

	/**
	 * Método que devuelve un listado de los particulares que solicitan un servicio de kittysitters en la gatoteca
	 * @return Devuelve un arrayList con la informacion de todos los particulares
	 */
	//Metodo generar listado de particulares
	public ArrayList<Particular>dameParticulares(){
		ArrayList<Particular> particulares = new ArrayList<Particular>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from particulares";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				particulares.add(new Particular(rs.getString("dni_Particular"), rs.getString("nombre_Particular"), rs.getInt("telefono"), rs.getString("residencia"), rs.getInt("numero_gatos")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame particulares: " + e.getMessage());
		}
		
		return particulares;
	}
	
	/**
	 * Metodo que te devuelve un Particular en concreto 
	 * @param dni_Particular Parametro que es el dni del particular el cual queremos la informacion
	 * @return devuelve un Objeto de tipo particular con la informacion del particular solicitado
	 */
	//Metodo para obtener un Particular
	public Particular dameParticular(String dni_Particular){
		Particular particular = new Particular();
		try {
			String cadena = "select * from Particulares where dni_Particular = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, dni_Particular);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				particular = new Particular(rs.getString("dni_Particular"), rs.getString("nombre_Particular"), rs.getInt("telefono"), rs.getString("residencia"), rs.getInt("numero_gatos"));
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Particular: " + e.getMessage());
		}
		
		return particular;
	}
	
	/**
	 * Metodo para añadir un particular a la base de datos 
	 * @param dni_Particular
	 * @param nombre_Particular
	 * @param telefono
	 * @param residencia
	 * @param numero_gatos
	 */
	//Método para añadir un particular
	public void altaParticular(String dni_Particular, String nombre_Particular, int telefono, String residencia, int numero_gatos) {
		
		String cadenaSQL = "Insert into Particulares values (?,?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_Particular);
			miStatement.setString(2, nombre_Particular);
			miStatement.setInt(3, telefono);	
			miStatement.setString(4, residencia);
			miStatement.setInt(5, numero_gatos);			
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de particular: " + e.getMessage());
		}
	}
	
	/**
	 * Método para modificar la información de un particular almacenado en la base de datos el cual funciona como los otros metodos de modificar
	 * @param dni_Particular
	 * @param nombre_Particular
	 * @param telefono
	 * @param residencia
	 * @param numero_gatos
	 */
	//Método para modificar un particular
	public void modificarParticular(String dni_Particular, String nombre_Particular, int telefono, String residencia, int numero_gatos) {
		
		String cadenaSQL = "Update particulares SET nombre_Particular = ?, telefono = ?, residencia = ?, numero_gatos = ? WHERE dni_Particular = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, nombre_Particular);
			miStatement.setInt(2, telefono);	
			miStatement.setString(3, residencia);
			miStatement.setInt(4, numero_gatos);		
			miStatement.setString(5, dni_Particular);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificaion particular: " + e.getMessage());
		}
	}
	

	/**
	 * Método para eliminar un particular de la base de datos
	 * @param dni_Particular Dni del particular que se quiere eliminar
	 */
	//Metodo para dar de baja un Particular
	public void bajaParticular (String dni_Particular) {
		
		try {
		         String sql = "Delete from particulares where dni_Particular = ?";
		         PreparedStatement miStatement = this.conexion.prepareStatement(sql);
		         miStatement.setString(1, dni_Particular);
		         miStatement.executeUpdate();
	
	     } catch (Exception e) {
	         // TODO: handle exception
	         System.out.println("Error en baja particular : " + e.getMessage());
	     }
	}

	
	/**
	 * Método para saber si existe un particular en la base de datos
	 * @param dni_Particular Dni del particula que se quiere saber si está
	 * @return Verdadero si existe, falso si no
	 */
	//Método para saber si existe un particular en la base de datos
	public boolean existeParticular(String dni_Particular) {
		boolean existe = false;
		 try {
	           String sql = "select * from particulares where dni_Particular = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setString(1, dni_Particular);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();
		        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe Particular : " + e.getMessage());
	        }
		 return existe;
	}

	/**
	 * Método para obtener un listado de los contratos
	 * @return ArrayList de contratos con la informacion de todos ellos
	 */
	//Metodo para generar un listado de los contratos
	public ArrayList<Contrato>dameContratos(){
		ArrayList<Contrato> contratos = new ArrayList<Contrato>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from contratan";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				contratos.add(new Contrato(rs.getInt("codigo_visita"), rs.getString("dni_Voluntario"), rs.getString("dni_Particular"), rs.getString("fecha_inicio"), rs.getString("fecha_fin"), rs.getDouble("presupuesto")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame contratos: " + e.getMessage());
		}
		
		return contratos;
	}
	
	/**
	 * Método para obtener un contrato en particular pasando por parametro el codigo del contrato de visita
	 * @param codigo_visita
	 * @return Un objeto tipo contrato con la información del mismo
	 */
	//Metodo para obtener un Contrato
	public Contrato dameContrato(int codigo_visita){
		Contrato contrato = new Contrato();
		try {
			String cadena = "select * from contratan where codigo_visita = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setInt(1, codigo_visita);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				contrato = new Contrato(rs.getInt("codigo_visita"), rs.getString("dni_Voluntario"), rs.getString("dni_Particular"), rs.getString("fecha_inicio"), rs.getString("fecha_fin"), rs.getDouble("presupuesto"));
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Contrato: " + e.getMessage());
		}
		
		return contrato;
	}
	
	/**
	 * Método para dar de alta un contrato en la base de datos
	 * @param dni_Voluntario
	 * @param dni_Particular
	 * @param fecha_inicio
	 * @param fecha_fin
	 * @param presupuesto
	 */
	//Metodo para añadir un contrato
	public void altaContrato(String dni_Voluntario, String dni_Particular, String fecha_inicio, String fecha_fin, double presupuesto) {
		
		String cadenaSQL = "Insert into contratan (dni_Voluntario, dni_Particular, fecha_inicio, fecha_fin, presupuesto) values (?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_Voluntario);
			miStatement.setString(2, dni_Particular);
			miStatement.setString(3, fecha_inicio);
			miStatement.setString(4, fecha_fin);
			miStatement.setDouble(5, presupuesto);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de Contrato: " + e.getMessage());
		}
	}
	
	/**
	 * Método para modificar un contrato en particular dentro de la base de datos el cual funciona como los otros metodos de modificar
	 * @param codigo_visita
	 * @param dni_Voluntario
	 * @param dni_Particular
	 * @param fecha_inicio
	 * @param fecha_fin
	 * @param presupuesto
	 */
	//Metodo para añadir un contrato
	public void modificarContrato(int codigo_visita, String dni_Voluntario, String dni_Particular, String fecha_inicio, String fecha_fin, double presupuesto) {
		
		String cadenaSQL = "UPDATE contratan SET dni_Voluntario = ?, dni_Particular = ?, fecha_inicio = ?, fecha_fin = ?, presupuesto = ? WHERE codigo_visita = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_Voluntario);
			miStatement.setString(2, dni_Particular);
			miStatement.setString(3, fecha_inicio);
			miStatement.setString(4, fecha_fin);
			miStatement.setDouble(5, presupuesto);
			miStatement.setInt(6, codigo_visita);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificación de Contrato: " + e.getMessage());
		}
	}
	
	public boolean existeContrato(int codigo_visita) {
		boolean existe = false;
		 try {
	           String sql = "select * from contratan where codigo_visita = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setInt(1, codigo_visita);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();
		        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe Contrato : " + e.getMessage());
	        }
		 return existe;
	}

	public void bajaContrato (int codigo_visita) {
		
		try {
		    String sql = "Delete from contratan where codigo_visita = ?";
		    PreparedStatement miStatement = this.conexion.prepareStatement(sql);
		    miStatement.setInt(1, codigo_visita);
		    miStatement.executeUpdate();
	
	     } catch (Exception e) {
	         // TODO: handle exception
	         System.out.println("Error en baja contrato : " + e.getMessage());
	     }
	}
	
	/**
	 * Método que devuelve un listado con la informacion de todos los veterinarios
	 * @return ArrayList con la informacion de los veterinarios
	 */
	//Método para obtener un listado de los veterinarios
	public ArrayList<Veterinario>dameVeterinarios(){
		ArrayList<Veterinario> veterinarios = new ArrayList<Veterinario>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from Veterinarios";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				veterinarios.add(new Veterinario(rs.getString("dni_veterinario"), rs.getString("nombre_veterinario"), rs.getInt("telefono_veterinario"), rs.getString("especialidad")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame veterinarios: " + e.getMessage());
		}
		
		return veterinarios;
	}	
	
	
	/**
	 * Método para obtener un veterinario en particular
	 * @param dni_veterinario
	 * @return devuelve un objeto veterinario con la informacion del mismo
	 */
	//Metodo para obtener un Veterinario
	public Veterinario dameVeterinario(String dni_veterinario){
		Veterinario veterinario = new Veterinario();
		try {
			String cadena = "select * from Veterinarios where dni_veterinario = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, dni_veterinario);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				veterinario = new Veterinario(rs.getString("dni_veterinario"), rs.getString("nombre_veterinario"), rs.getInt("telefono_veterinario"), rs.getString("especialidad"));
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Veterinario: " + e.getMessage());
		}
		
		return veterinario;
	}
		
	/**
	 * Método para añadir un veterinario a la base de datos
	 * @param dni_veterinario
	 * @param nombre_veterinario
	 * @param telefono_veterinario
	 * @param especialidad
	 */
	//Método para dar de alta un Vterinario
	public void altaVeterinario(String dni_veterinario, String nombre_veterinario, int telefono_veterinario, String especialidad) {
		
		String cadenaSQL = "Insert into veterinarios values (?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_veterinario);
			miStatement.setString(2, nombre_veterinario);
			miStatement.setInt(3, telefono_veterinario);
			miStatement.setString(4, especialidad);
			
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de Veterinario: " + e.getMessage());
		}
	}
	
	/**
	 * Método para modificar un veterinario de la base de datos el cual funciona como los otros metodos de modificar
	 * @param dni_veterinario
	 * @param nombre_veterinario
	 * @param telefono_veterinario
	 * @param especialidad
	 */
	//Método para modificar un Vterinario
	public void modificarVeterinario(String dni_veterinario, String nombre_veterinario, int telefono_veterinario, String especialidad) {
		
		String cadenaSQL = "UPDATE veterinarios SET nombre_veterinario = ?, telefono_veterinario = ?, especialidad = ? WHERE dni_veterinario = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, nombre_veterinario);
			miStatement.setInt(2, telefono_veterinario);
			miStatement.setString(3, especialidad);
			miStatement.setString(4, dni_veterinario);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificacion de Veterinario: " + e.getMessage());
		}
	}

	/**
	 * Método para dar de baja un veterinario
	 * @param dni_veterinario
	 */
	//Metodo para dar de baja un veterinario
	public void bajaVeterinario (String dni_veterinario) {
		
		try {
		         String sql = "Delete from veterinarios where dni_veterinario = ?";
		         PreparedStatement miStatement = this.conexion.prepareStatement(sql);
		         miStatement.setString(1, dni_veterinario);
		         miStatement.executeUpdate();
	
	     } catch (Exception e) {
	         // TODO: handle exception
	         System.out.println("Error en baja Veterinario : " + e.getMessage());
	     }
	}

	/**
	 * Método para saber si existe un veterinario en la base de datos
	 * @param dni_veterinario
	 * @return verdadero si está, falso si no
	 */
	//Método para saber si existe un veterinario en la base de datos
	public boolean existeVeterinario(String dni_veterinario) {
		boolean existe = false;
		 try {
	           String sql = "select * from veterinarios where dni_veterinario = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setString(1, dni_veterinario);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();
		        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe veterinario : " + e.getMessage());
	        }
		 return existe;
	}

	/**
	 * Metodo para generar un listado de las visitas
	 * @return devuelve un arrayList de Visitas
	 */
	//Metodo para generar un listado de las visitas
	public ArrayList<Visita>dameVisitas(){
		ArrayList<Visita> visitas = new ArrayList<Visita>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from Visitan";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				visitas.add(new Visita(rs.getInt("id_cita"), rs.getInt("Numero_chip_GL"), rs.getString("dni_Veterinario"), rs.getString("fecha_cita"), rs.getString("Tratamiento"), rs.getInt("duracion")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame visitas: " + e.getMessage());
		}
		
		return visitas;
	}
	
	/**
	 * Método para obtener la informacion de una visita en particular
	 * @param id_cita
	 * @return devuelve una visita
	 *
	 */
	//Metodo para obtener una Visita
	public Visita dameVisita(int id_cita){
		Visita visita = new Visita();
		try {
			String cadena = "select * from visitan where id_cita = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setInt(1, id_cita);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				visita = new Visita(rs.getInt("id_cita"), rs.getInt("Numero_chip_GL"), rs.getString("dni_Veterinario"), rs.getString("fecha_cita"), rs.getString("Tratamiento"), rs.getInt("duracion"));
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Visita: " + e.getMessage());
		}
		
		return visita;
	}
	
	/**
	 *  Método para añadir una visita a la base de datos
	 * @param numero_chip_GL
	 * @param dni_Veterinario
	 * @param fecha_cita
	 * @param tratamiento
	 * @param duracion
	 */
	//Metodo para añadir una visita
	public void altaVisita(int numero_chip_GL, String dni_Veterinario, String fecha_cita, String tratamiento, int duracion) {
		
		String cadenaSQL = "Insert into visitan (numero_chip_GL, dni_Veterinario, fecha_cita, tratamiento, duracion) values (?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setInt(1, numero_chip_GL);
			miStatement.setString(2, dni_Veterinario);
			miStatement.setString(3, fecha_cita);
			miStatement.setString(4, tratamiento);
			miStatement.setInt(5, duracion);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de visita: " + e.getMessage());
		}
	}
	
	/**
	 * Método para modificar una visita de la base de datos
	 * @param id_cita
	 * @param numero_chip_GL
	 * @param dni_Veterinario
	 * @param fecha_cita
	 * @param tratamiento
	 * @param duracion
	 */
	//Metodo para añadir un contrato
	public void modificarVisita(int id_cita, int numero_chip_GL, String dni_Veterinario, String fecha_cita, String tratamiento, int duracion) {
		
		String cadenaSQL = "UPDATE visitan SET Numero_chip_GL = ?, Dni_Veterinario = ?, Fecha_cita = ?, Tratamiento = ?, duracion = ? WHERE id_cita = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setInt(1, numero_chip_GL);
			miStatement.setString(2, dni_Veterinario);
			miStatement.setString(3, fecha_cita);
			miStatement.setString(4, tratamiento);
			miStatement.setInt(5, duracion);
			miStatement.setInt(6, id_cita);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificación de visita: " + e.getMessage());
		}
	}
	
	public void bajaVisita (int id_cita) {
		
		try {
		    String sql = "Delete from visitan where id_cita = ?";
		    PreparedStatement miStatement = this.conexion.prepareStatement(sql);
		    miStatement.setInt(1, id_cita);
		    miStatement.executeUpdate();
	
	     } catch (Exception e) {
	         // TODO: handle exception
	         System.out.println("Error en baja Visita : " + e.getMessage());
	     }
	}
	
	public boolean existeVisita(int id_cita) {
		boolean existe = false;
		 try {
	           String sql = "select * from visitan where id_cita = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setInt(1, id_cita);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();
		        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe visita : " + e.getMessage());
	        }
		 return existe;
	}

	/**
	 * Método para obtener un listado de los socios
	 * @return ArrayList de Socios con la informacion de los mismos
	 */
	//Método para obtener un listado de los Socios
	public ArrayList<Socio>dameSocios(){
		ArrayList<Socio> socios = new ArrayList<Socio>();
		try {
			Statement miStatement = this.conexion.createStatement();
			String cadena = "Select * from Socios";	
			System.out.println(cadena);
			ResultSet rs = miStatement.executeQuery(cadena);
			
			while(rs.next()) {
				socios.add(new Socio(rs.getString("dni_socio"), rs.getString("nombre_socio"), rs.getInt("telefono_socio"), rs.getString("email"), rs.getString("tipo"), rs.getString("estado"), rs.getInt("id_local")));
			}
			miStatement.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Socios: " + e.getMessage());
		}
		
		return socios;
	}	
	
	/**
	 * Metodo para obtener la infromacion de un socio en particular
	 * @param dni_socio
	 * @return devuelve un objeto socio con su informacion
	 */
	//Metodo para obtener un Socio
	public Socio dameSocio(String dni_socio){
		Socio socio = new Socio();
		try {
			String cadena = "select * from Socios where dni_socio = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, dni_socio);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				socio = new Socio(rs.getString("dni_socio"), rs.getString("nombre_socio"), rs.getInt("telefono_socio"), rs.getString("email"), rs.getString("tipo"), rs.getString("estado"), rs.getInt("id_local"));
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame Socio: " + e.getMessage());
		}
		
		return socio;
	}
		
	/**
	 * Método para dar de alta un Socio
	 * @param dni_socio
	 * @param nombre_socio
	 * @param telefono_socio
	 * @param email
	 * @param tipo
	 * @param estado
	 * @param id_local
	 */
	//Método para dar de alta un Socio
	public void altaSocio(String dni_socio, String nombre_socio, int telefono_socio, String email, String tipo, String estado, int id_local) {
		
		String cadenaSQL = "Insert into socios values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, dni_socio);
			miStatement.setString(2, nombre_socio);
			miStatement.setInt(3, telefono_socio);
			miStatement.setString(4, email);
			miStatement.setString(5, tipo);
			miStatement.setString(6, estado);
			miStatement.setInt(7, id_local);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en alta de Socio: " + e.getMessage());
		}
	}
	
	/**
	 * Método para modificar un Socio
	 * @param dni_socio
	 * @param nombre_socio
	 * @param telefono_socio
	 * @param email
	 * @param tipo
	 * @param estado
	 * @param id_local
	 */
	//Método para modificar un Socio
	public void modificarSocio(String dni_socio, String nombre_socio, int telefono_socio, String email, String tipo, String estado, int id_local) {
		
		String cadenaSQL = "UPDATE Socios SET nombre_socio = ?, telefono_socio = ?, email = ?, tipo = ?, estado = ?, id_local = ? WHERE dni_socio = ?";
		try {
			PreparedStatement miStatement = this.conexion.prepareStatement(cadenaSQL);
			miStatement.setString(1, nombre_socio);
			miStatement.setInt(2, telefono_socio);
			miStatement.setString(3, email);
			miStatement.setString(4, tipo);
			miStatement.setString(5, estado);
			miStatement.setInt(6, id_local);
			miStatement.setString(7, dni_socio);
			
			miStatement.executeUpdate();
			miStatement.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en modificacion de Socio: " + e.getMessage());
		}
	}

	/**
	 * Metodo para dar de baja un Socio
	 * @param dni_socio
	 */
	//Metodo para dar de baja un Socio
	public void bajaSocio (String dni_socio) {
		
		try {
		    String sql = "Delete from socios where dni_socio = ?";
		    PreparedStatement miStatement = this.conexion.prepareStatement(sql);
		    miStatement.setString(1, dni_socio);
		    miStatement.executeUpdate();
	
	     } catch (Exception e) {
	         // TODO: handle exception
	         System.out.println("Error en baja Socio : " + e.getMessage());
	     }
	}

	/**
	 * Método para saber si existe un Socio en la base de datos
	 * @param dni_socio
	 * @return verdadero si existe falso si no.
	 */
	//Método para saber si existe un Socio en la base de datos
	public boolean existeSocio(String dni_socio) {
		boolean existe = false;
		 try {
	           String sql = "select * from socios where dni_socio = ?";
	            PreparedStatement miStatement = this.conexion.prepareStatement(sql);
	            miStatement.setString(1, dni_socio);
	            ResultSet rs = miStatement.executeQuery();
				while(rs.next()) {
					
					existe= true;
					
				}
				miStatement.close();
				rs.close();
		        } catch (Exception e) {
	            // TODO: handle exception
	            System.out.println("Error en existe socio : " + e.getMessage());
	        }
		 return existe;
	}
	
	public String dameNombreParticular(String dni_Particular) {
		
		String nombre = "";
		try {
			String cadena = "select Nombre_Particular from Particulares where dni_particular = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, dni_Particular);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				nombre = rs.getString("Nombre_Particular");
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame nombre particular: " + e.getMessage());
		}
		
		return nombre;
	}
	
	public String dameNombreVoluntario(String Dni_Voluntario) {
		
		String nombre = "";
		try {
			String cadena = "select Nombre_Voluntario from Voluntarios where Dni_Voluntario = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, Dni_Voluntario);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				nombre = rs.getString("Nombre_Voluntario");
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame nombre Voluntario: " + e.getMessage());
		}
		
		return nombre;
	}
	
	public String dameNombreVeterinario(String Dni_Veterinario) {
		
		String nombre = "";
		try {
			String cadena = "select Nombre_Veterinario from Veterinarios where Dni_Veterinario = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setString(1, Dni_Veterinario);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				nombre = rs.getString("Nombre_Veterinario");
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame nombre Veterinario: " + e.getMessage());
		}
		
		return nombre;
	}
	
	public String dameNombreGato(int nChip) {
		
		String nombre = "";
		try {
			String cadena = "select Nombre_GL from Gatos_Local where Numero_chip_GL = ?";
			PreparedStatement consultaPre = this.conexion.prepareStatement(cadena);
			consultaPre.setInt(1, nChip);
			ResultSet rs = consultaPre.executeQuery();
			
			while(rs.next()) {
				nombre = rs.getString("Nombre_GL");
				}
			consultaPre.close();
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Error en dame nombre gato: " + e.getMessage());
		}
		
		return nombre;
	}

}
