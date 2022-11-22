package model;

public class Cliente {
	/**	 atributos	 */
	private Integer id;
	private String nombre;
	private String apellido;
	private Integer dni;
	
	
	public Cliente(Integer id, String nombre, String apellido) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
	}
	
	
	/** 	 * getters y setters	 */
	
	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Integer getDni() {
		return dni;
	}

	public void setDni(Integer dni) {
		this.dni = dni;
	}

	//métodos
	public void comprarAuto() {
		// TODO Auto-generated method stub

	}
	
	public void solicitarCotizacion(Automovil auto) {
		System.out.println("El cliente " + this.nombre + ", " + this.apellido +" solicitó cotización del autmovil con patente " + auto.getPatente());

	}
	
	public void consultarAutos() {
		// TODO Auto-generated method stub

	}
}
