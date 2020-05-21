package lagatoteca;

public class Voluntario {
	String dni_Voluntario; 
	String nombre_Voluntario; 
	String fecha_Inscripcion; 
	int telefono; 
	String distrito; 
	int id_local;
	
	public Voluntario(String dni_Voluntario, String nombre_Voluntario, String fecha_Inscripcion, int telefono,
			String distrito, int id_local) {
		super();
		this.dni_Voluntario = dni_Voluntario;
		this.nombre_Voluntario = nombre_Voluntario;
		this.fecha_Inscripcion = fecha_Inscripcion;
		this.telefono = telefono;
		this.distrito = distrito;
		this.id_local = id_local;
	}
	public Voluntario() {
		super();
	}
	public String getDni_Voluntario() {
		return dni_Voluntario;
	}
	public String getNombre_Voluntario() {
		return nombre_Voluntario;
	}
	public String getFecha_Inscripcion() {
		return fecha_Inscripcion;
	}
	public int getTelefono() {
		return telefono;
	}
	public String getDistrito() {
		return distrito;
	}
	public int getId_local() {
		return id_local;
	}
	public void setDni_Voluntario(String dni_Voluntario) {
		this.dni_Voluntario = dni_Voluntario;
	}
	public void setNombre_Voluntario(String nombre_Voluntario) {
		this.nombre_Voluntario = nombre_Voluntario;
	}
	public void setFecha_Inscripcion(String fecha_Inscripcion) {
		this.fecha_Inscripcion = fecha_Inscripcion;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public void setDistrito(String distrito) {
		this.distrito = distrito;
	}
	public void setId_local(int id_local) {
		this.id_local = id_local;
	}
	
	
	
}
