package lagatoteca;

public class Visita {
	int id_Cita;
	int numero_chip_GL;
	String dni_Veterinario;
	String fecha_cita;
	String tratamiento;
	int duracion;
	public Visita() {
		super();
	}
	public Visita(int id_Cita, int numero_chip_GL, String dni_Veterinario, String fecha_cita, String tratamiento,
			int duracion) {
		super();
		this.id_Cita = id_Cita;
		this.numero_chip_GL = numero_chip_GL;
		this.dni_Veterinario = dni_Veterinario;
		this.fecha_cita = fecha_cita;
		this.tratamiento = tratamiento;
		this.duracion = duracion;
	}
	public int getId_Cita() {
		return id_Cita;
	}
	public int getNumero_chip_GL() {
		return numero_chip_GL;
	}
	public String getDni_Veterinario() {
		return dni_Veterinario;
	}
	public String getFecha_cita() {
		return fecha_cita;
	}
	public String getTratamiento() {
		if(tratamiento==null) {
			tratamiento = "";
		}
		return tratamiento;
	}
	public int getDuracion() {
		return duracion;
	}
	public void setId_Cita(int id_Cita) {
		this.id_Cita = id_Cita;
	}
	public void setNumero_chip_GL(int numero_chip_GL) {
		this.numero_chip_GL = numero_chip_GL;
	}
	public void setDni_Veterinario(String dni_Veterinario) {
		this.dni_Veterinario = dni_Veterinario;
	}
	public void setFecha_cita(String fecha_cita) {
		this.fecha_cita = fecha_cita;
	}
	public void setTratamiento(String tratamiento) {
		this.tratamiento = tratamiento;
	}
	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}
	
}
