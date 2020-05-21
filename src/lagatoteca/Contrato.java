package lagatoteca;

public class Contrato {
	
	int codigo_visita;
	String dni_Voluntario; 
	String dni_Particular; 
	String fecha_inicio; 
	String fecha_fin; 
	double presupuesto;
	
	public Contrato() {
		super();
	}
	
	public Contrato(int codigo_visita, String dni_Voluntario, String dni_Particular, String fecha_inicio,
			String fecha_fin, double presupuesto) {
		super();
		this.codigo_visita = codigo_visita;
		this.dni_Voluntario = dni_Voluntario;
		this.dni_Particular = dni_Particular;
		this.fecha_inicio = fecha_inicio;
		this.fecha_fin = fecha_fin;
		this.presupuesto = presupuesto;
	}
	public int getCodigo_visita() {
		return codigo_visita;
	}
	public String getDni_Voluntario() {
		return dni_Voluntario;
	}
	public String getDni_Particular() {
		return dni_Particular;
	}
	public String getFecha_inicio() {
		return fecha_inicio;
	}
	public String getFecha_fin() {
		return fecha_fin;
	}
	public double getPresupuesto() {
		return presupuesto;
	}
	public void setCodigo_visita(int codigo_visita) {
		this.codigo_visita = codigo_visita;
	}
	public void setDni_Voluntario(String dni_Voluntario) {
		this.dni_Voluntario = dni_Voluntario;
	}
	public void setDni_Particular(String dni_Particular) {
		this.dni_Particular = dni_Particular;
	}
	public void setFecha_inicio(String fecha_inicio) {
		this.fecha_inicio = fecha_inicio;
	}
	public void setFecha_fin(String fecha_fin) {
		this.fecha_fin = fecha_fin;
	}
	public void setPresupuesto(double presupuesto) {
		this.presupuesto = presupuesto;
	}
	
}
