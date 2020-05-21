package lagatoteca;

public class Trabajador {
	String dni_trabajador; 
	String nombre_trabajador; 
	String fecha_nac; 
	String numero_Seg_Social; 
	String puesto; 
	int id_local;
	public Trabajador() {
		super();
	}
	public Trabajador(String dni_trabajador, String nombre_trabajador, String fecha_nac, String numero_Seg_Social,
			String puesto, int id_local) {
		super();
		this.dni_trabajador = dni_trabajador;
		this.nombre_trabajador = nombre_trabajador;
		this.fecha_nac = fecha_nac;
		this.numero_Seg_Social = numero_Seg_Social;
		this.puesto = puesto;
		this.id_local = id_local;
	}
	public String getDni_trabajador() {
		return dni_trabajador;
	}
	public String getNombre_trabajador() {
		return nombre_trabajador;
	}
	public String getFecha_nac() {
		return fecha_nac;
	}
	public String getNumero_Seg_Social() {
		return numero_Seg_Social;
	}
	public String getPuesto() {
		return puesto;
	}
	public int getId_local() {
		return id_local;
	}
	public void setDni_trabajador(String dni_trabajador) {
		this.dni_trabajador = dni_trabajador;
	}
	public void setNombre_trabajador(String nombre_trabajador) {
		this.nombre_trabajador = nombre_trabajador;
	}
	public void setFecha_nac(String fecha_nac) {
		this.fecha_nac = fecha_nac;
	}
	public void setNumero_Seg_Social(String numero_Seg_Social) {
		this.numero_Seg_Social = numero_Seg_Social;
	}
	public void setPuesto(String puesto) {
		this.puesto = puesto;
	}
	public void setId_local(int id_local) {
		this.id_local = id_local;
	}
	
	
}
