package test;

import model.Automovil;
import model.Cliente;
import model.Vendedor;

public class Concesionaria {

	
	public static void main(String[] args) {
		//simulamos lectura db y caga de clases
		Vendedor vend1=new Vendedor(1, "Laura","Thompson"); //instanciar clase
		Vendedor vend2=new Vendedor(2,"Pablo","Suarez");
		
		Cliente cli1=new Cliente(1, "Juan", "Perez");
		Cliente cli2=new Cliente(2, "Lorena","Astudillo");
		
		//TODO: usar construct
		Automovil auto1=new Automovil();
		auto1.setId(1);
		auto1.setPatente("DDD333");

		Automovil auto2=new Automovil();
		auto2.setId(2);
		auto2.setPatente("LLL222");
		
		Automovil auto3=new Automovil();
		auto3.setId(3);
		auto3.setPatente("EEE233");
		
		cli2.solicitarCotizacion(auto2);
		cli1.solicitarCotizacion(auto3);
		
		vend2.cotizarAutmovil(auto2, cli1);
		vend1.cotizarAutmovil(auto1, cli1);
		
		vend1.venderAuto(auto1,cli1);
		
	}
}
