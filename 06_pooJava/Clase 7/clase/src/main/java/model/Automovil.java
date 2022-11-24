package model;

public class Automovil {
	private Integer id;
	private String patente;
	private String marca;
	private String modelo;
	
	//TODO: generar constructor
	
	
	public Automovil(Integer id, String patente) {
		super();
		this.id = id;
		this.patente = patente;
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



	public String getMarca() {
		return marca;
	}



	public void setMarca(String marca) {
		this.marca = marca;
	}



	public String getModelo() {
		return modelo;
	}



	public void setModelo(String modelo) {
		this.modelo = modelo;
	}



	public void trasladarse() {
		// TODO Auto-generated method stub

	}

}
