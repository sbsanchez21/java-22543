package herencia;

public class Vehiculo {
	private Integer id;
	private String patente;
	private String modelo;
	private String marca;
	
	public Vehiculo(Integer id, String patente, String modelo, String marca) {
		super();
		this.id = id;
		this.patente = patente;
		this.modelo = modelo;
		this.marca = marca;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPatente() {
		return patente;
	}

	public void setPatente(String patente) {
		this.patente = patente;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}
	

	protected void arrancar() {
		// TODO Auto-generated method stub

	}
	
	protected void trasladarse() {
		// TODO Auto-generated method stub

	}
	
}
