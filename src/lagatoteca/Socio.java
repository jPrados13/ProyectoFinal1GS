package lagatoteca;

public class Socio {
	
	String dni_Socio;
	String nombre_Socio;
	int telefono_socio;
	String email;
	String tipo;
	String estado;
	int id_Local;
	public Socio() {
		super();
	}
	public Socio(String dni_Socio, String nombre_Socio, int telefono_socio, String email, String tipo, String estado,
			int id_Local) {
		super();
		this.dni_Socio = dni_Socio;
		this.nombre_Socio = nombre_Socio;
		this.telefono_socio = telefono_socio;
		this.email = email;
		this.tipo = tipo;
		this.estado = estado;
		this.id_Local = id_Local;
	}
	public String getDni_Socio() {
		return dni_Socio;
	}
	public String getNombre_Socio() {
		return nombre_Socio;
	}
	public int getTelefono_socio() {
		return telefono_socio;
	}
	public String getEmail() {
		return email;
	}
	public String getTipo() {
		return tipo;
	}
	public String getEstado() {
		return estado;
	}
	public int getId_Local() {
		return id_Local;
	}
	public void setDni_Socio(String dni_Socio) {
		this.dni_Socio = dni_Socio;
	}
	public void setNombre_Socio(String nombre_Socio) {
		this.nombre_Socio = nombre_Socio;
	}
	public void setTelefono_socio(int telefono_socio) {
		this.telefono_socio = telefono_socio;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public void setId_Local(int id_Local) {
		this.id_Local = id_Local;
	}
	
	
}
