package model;

public class Vendedor {
	//atributos
	private Integer id;
	private String nombre;
	private String apellido;
	private Integer dni;
	private Integer cantVentas;
	
	
	/**	  Constructores	 */
	
	public Vendedor(Integer id, String nombre, String apellido) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
	}

	public Vendedor(Integer id, String nombre, String apellido, Integer dni, Integer cantVentas) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.cantVentas = cantVentas;
	}

	
	/**
	 * getters permite obtener los datos de los atributos 
	 * setters permite modificar los datos de los atributos
	 */
	
	public Integer getId() {
		//TODO: verificar si es usuario admin para hacer esta operación
		return id;
	}

	public void setId(Integer id) {
		//TODO: verificar si es usuario admin para hacer esta operación
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

	public Integer getCantVentas() {
		return cantVentas;
	}

	public void setCantVentas(Integer cantVentas) {
		this.cantVentas = cantVentas;
	}

	//métodos
	public void cotizarAutmovil(Automovil auto, Cliente cli) {
		System.out.println("El vendedor " + this.nombre + ", " + this.apellido +" cotizó el autmovil con patente " + auto.getPatente() + " para el cliente " + cli.getNombre()
	+ ", " + cli.getApellido());

	}
	
	public void venderAuto(Automovil auto, Cliente cli) {
		System.out.println("El vendedor " + this.nombre + ", " + this.apellido +" vendió el autmovil con patente " + auto.getPatente() + " para el cliente " + cli.getNombre()+ ", " + cli.getApellido());

	}
	
	
}
