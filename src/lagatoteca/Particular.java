package lagatoteca;

public class Particular {
	
	
	String dni_Particular; 
	String nombre_Particular; 
	int telefono; 
	String residencia; 
	int numero_gatos;
	
	public Particular() {
		super();
	}
	
	public Particular(String dni_Particular, String nombre_Particular, int telefono, String residencia,
			int numero_gatos) {
		super();
		this.dni_Particular = dni_Particular;
		this.nombre_Particular = nombre_Particular;
		this.telefono = telefono;
		this.residencia = residencia;
		this.numero_gatos = numero_gatos;
	}
	public String getDni_Particular() {
		return dni_Particular;
	}
	public String getNombre_Particular() {
		return nombre_Particular;
	}
	public int getTelefono() {
		return telefono;
	}
	public String getResidencia() {
		return residencia;
	}
	public int getNumero_gatos() {
		return numero_gatos;
	}
	public void setDni_Particular(String dni_Particular) {
		this.dni_Particular = dni_Particular;
	}
	public void setNombre_Particular(String nombre_Particular) {
		this.nombre_Particular = nombre_Particular;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public void setResidencia(String residencia) {
		this.residencia = residencia;
	}
	public void setNumero_gatos(int numero_gatos) {
		this.numero_gatos = numero_gatos;
	}
	
	
}
