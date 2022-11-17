package model;

public class Cliente {
	//atributos
	public Integer id;
	public String nombre;
	public String apellido;
	public Integer dni;
	
	//métodos
	public void comprarAuto() {
		// TODO Auto-generated method stub

	}
	
	public void solicitarCotizacion(Automovil auto) {
		System.out.println("El cliente " + this.nombre + ", " + this.apellido +" solicitó cotización del autmovil con patente " + auto.patente);

	}
	
	public void consultarAutos() {
		// TODO Auto-generated method stub

	}
}
