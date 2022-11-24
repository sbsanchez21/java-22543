package composicion;

public class Cliente {
	private Integer id;
	private String nombre;
	private String apellido;
	private Integer dni;
	private Cuenta cuenta;
	
	
	public Cliente(Integer id, String nombre, String apellido, Cuenta cuenta) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.cuenta=cuenta;
	}



	public Cliente(Integer id, String nombre, String apellido, Integer dni) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
	}



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



	public Cuenta getCuenta() {
		return cuenta;
	}



	public void setCuenta(Cuenta cuenta) {
		this.cuenta = cuenta;
	}
	
	
	public void mostrarSaldo() {
		System.out.println("El saldo de la cuenta es " + this.cuenta.getSaldo());

	}
	
	public void depositar(Double deposito) {
		this.cuenta.depositar(deposito);
		System.out.println("Se deposito el dinero el saldo final es " + this.cuenta.getSaldo());
	}
	
}
