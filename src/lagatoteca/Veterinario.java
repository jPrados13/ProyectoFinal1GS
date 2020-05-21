package lagatoteca;

public class Veterinario {
	String dni_veterinario; 
	String nombre_veterinario; 
	int telefono_veterinario; 
	String especialidad;
	public Veterinario() {
		super();
	}
	public Veterinario(String dni_veterinario, String nombre_veterinario, int telefono_veterinario,
			String especialidad) {
		super();
		this.dni_veterinario = dni_veterinario;
		this.nombre_veterinario = nombre_veterinario;
		this.telefono_veterinario = telefono_veterinario;
		this.especialidad = especialidad;
	}
	public String getDni_veterinario() {
		return dni_veterinario;
	}
	public String getNombre_veterinario() {
		return nombre_veterinario;
	}
	public int getTelefono_veterinario() {
		return telefono_veterinario;
	}
	public String getEspecialidad() {
		return especialidad;
	}
	public void setDni_veterinario(String dni_veterinario) {
		this.dni_veterinario = dni_veterinario;
	}
	public void setNombre_veterinario(String nombre_veterinario) {
		this.nombre_veterinario = nombre_veterinario;
	}
	public void setTelefono_veterinario(int telefono_veterinario) {
		this.telefono_veterinario = telefono_veterinario;
	}
	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}
	
}
