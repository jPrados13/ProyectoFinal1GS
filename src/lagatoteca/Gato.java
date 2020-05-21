package lagatoteca;

public class Gato {
	String nChip;
	String nombre;
	double edad;
	String sexo;
	String descripcion;
	int id_local;
	String fechaAdop;
	String dniAdoptante;
	String fechaEntrada;
	
	public Gato(String nChip, String nombre, double edad, String sexo, String descripcion, int id_local,
			String fechaAdop, String dniAdoptante) {
		super();
		this.nChip = nChip;
		this.nombre = nombre;
		this.edad = edad;
		this.sexo = sexo;
		this.descripcion = descripcion;
		this.id_local = id_local;
		this.fechaAdop = fechaAdop;
		this.dniAdoptante = dniAdoptante;
	}

	public Gato(String nChip, String nombre, double edad, String sexo, String descripcion, int id_local,
			String fechaEntrada) {
		super();
		this.nChip = nChip;
		this.nombre = nombre;
		this.edad = edad;
		this.sexo = sexo;
		this.descripcion = descripcion;
		this.id_local = id_local;
		this.fechaEntrada = fechaEntrada;
	}

	public Gato() {
		super();
	}
	
	public Gato(String nChip, String nombre, String descripcion) {
		super();
		this.nChip = nChip;
		this.nombre = nombre;
		this.descripcion = descripcion;
	}
	public String getnChip() {
		return nChip;
	}
	public String getNombre() {
		return nombre;
	}
	public double getEdad() {
		return edad;
	}
	public String getSexo() {
		return sexo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public int getId_local() {
		return id_local;
	}
	public String getFechaAdop() {
		return fechaAdop;
	}

	public String getDniAdoptante() {
		return dniAdoptante;
	}

	public String getFechaEntrada() {
		return fechaEntrada;
	}

	public void setFechaAdop(String fechaAdop) {
		this.fechaAdop = fechaAdop;
	}

	public void setDniAdoptante(String dniAdoptante) {
		this.dniAdoptante = dniAdoptante;
	}

	public void setFechaEntrada(String fechaEntrada) {
		this.fechaEntrada = fechaEntrada;
	}

	public void setnChip(String nChip) {
		this.nChip = nChip;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public void setEdad(double edad) {
		this.edad = edad;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public void setId_local(int id_local) {
		this.id_local = id_local;
	}
	
}
