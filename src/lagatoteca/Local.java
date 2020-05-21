package lagatoteca;

public class Local {

	int id_local;
	String calle;
	int telefono;
	int aforoPers;
	int aforoGatos;
	
	public Local() {
		super();
	}
	public Local(int id_local, String calle, int telefono, int aforoPers, int aforoGatos) {
		super();
		this.id_local = id_local;
		this.calle = calle;
		this.telefono = telefono;
		this.aforoPers = aforoPers;
		this.aforoGatos = aforoGatos;
	}
	public int getId_local() {
		return id_local;
	}
	public String getCalle() {
		return calle;
	}
	public int getTelefono() {
		return telefono;
	}
	public int getAforoPers() {
		return aforoPers;
	}
	public int getAforoGatos() {
		return aforoGatos;
	}
	public void setId_local(int id_local) {
		this.id_local = id_local;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public void setAforoPers(int aforoPers) {
		this.aforoPers = aforoPers;
	}
	public void setAforoGatos(int aforoGatos) {
		this.aforoGatos = aforoGatos;
	}
	
	
}
