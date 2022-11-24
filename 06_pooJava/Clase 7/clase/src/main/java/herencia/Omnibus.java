package herencia;

public class Omnibus extends Vehiculo {
	private Integer cantAsientos;

	public Omnibus(Integer id, String patente, String modelo, String marca, Integer cantAsientos) {
		super(id, patente, modelo, marca);
		this.cantAsientos = cantAsientos;
	}

	public Integer getCantAsientos() {
		return cantAsientos;
	}

	public void setCantAsientos(Integer cantAsientos) {
		this.cantAsientos = cantAsientos;
	}
	
	
	public void cargarPasajeros(Integer cantPasajeros) {
		if (cantPasajeros > this.cantAsientos) {
			System.err.println("No puede cargar más pasajeros que el máximo " + this.cantAsientos);
		} else {
			System.out.println("Puede cargar los pasajeros");
		}

	}
	

}
