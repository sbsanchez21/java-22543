package model;

public class Vendedor {
	//atributos
	public Integer id;
	public String nombre;
	public String apellido;
	public Integer dni;
	public Integer cantVentas;
	
	//métodos
	public void cotizarAutmovil(Automovil auto, Cliente cli) {
		System.out.println("El vendedor " + this.nombre + ", " + this.apellido +" cotizó el autmovil con patente " + auto.patente + " para el cliente " + cli.nombre + ", " + cli.apellido);

	}
	
	public void venderAuto(Automovil auto, Cliente cli) {
		// TODO Auto-generated method stub

	}
	
	
}
