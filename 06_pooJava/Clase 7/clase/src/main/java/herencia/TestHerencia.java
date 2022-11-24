package herencia;

public class TestHerencia {

	public static void main(String[] args) {
		Camion cam1=new Camion(1, "DDD222", "Volvo", "VX1000", 6, 10000.00, true);
		
		Omnibus om1=new Omnibus(1, "RRR333", "Mercedes Benz", "F1000", 45);
		Omnibus om2=new Omnibus(1, "DDD211", "Mercedes Benz", "F1000", 40);
		
		System.out.println(om2.getPatente());
		om2.cargarPasajeros(50);
		om2.cargarPasajeros(40);
	}
}
