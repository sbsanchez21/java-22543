package herencia;

public class Camion extends Vehiculo {
	private Integer cantRuedas;
	private Double tara;
	private Boolean tieneAcoplado;
	
	
	
	public Camion(Integer id, String patente, String modelo, String marca, Integer cantRuedas, Double tara,
			Boolean tieneAcoplado) {
		super(id, patente, modelo, marca);
		this.cantRuedas = cantRuedas;
		this.tara = tara;
		this.tieneAcoplado = tieneAcoplado;
	}

	public Integer getCantRuedas() {
		return cantRuedas;
	}

	public void setCantRuedas(Integer cantRuedas) {
		this.cantRuedas = cantRuedas;
	}

	public Double getTara() {
		return tara;
	}

	public void setTara(Double tara) {
		this.tara = tara;
	}

	public Boolean getTieneAcoplado() {
		return tieneAcoplado;
	}

	public void setTieneAcoplado(Boolean tieneAcoplado) {
		this.tieneAcoplado = tieneAcoplado;
	}
	
	
	
}
