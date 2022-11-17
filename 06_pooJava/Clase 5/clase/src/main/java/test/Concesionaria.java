package test;

import model.Automovil;
import model.Cliente;
import model.Vendedor;

public class Concesionaria {

	
	public static void main(String[] args) {
		//simulamos lectura db y caga de clases
		Vendedor vend1=new Vendedor(); //instanciar clase
		vend1.id=1;
		vend1.nombre="Laura";
		vend1.apellido="Thompson";
		vend1.dni=22333333;
		
		Vendedor vend2=new Vendedor();
		vend2.id=2;
		vend2.nombre="Pablo";
		vend2.apellido="Suarez";
		vend2.dni=22333333;
		
		Cliente cli1=new Cliente();
		cli1.id=1;
		cli1.nombre="Juan";
		cli1.apellido="Perez";

		Cliente cli2=new Cliente();
		cli2.id=2;
		cli2.nombre="Lorena";
		cli2.apellido="Astudillo";
		
		Automovil auto1=new Automovil();
		auto1.id=1;
		auto1.patente="DDD333";

		Automovil auto2=new Automovil();
		auto2.id=2;
		auto2.patente="LLL222";
		
		Automovil auto3=new Automovil();
		auto3.id=3;
		auto3.patente="EEE233";
		
		cli2.solicitarCotizacion(auto2);
		cli1.solicitarCotizacion(auto3);
		
		vend2.cotizarAutmovil(auto2, cli1);
		vend1.cotizarAutmovil(auto1, cli1);
		
		vend1.venderAuto(auto1,cli1);
		
	}
}
