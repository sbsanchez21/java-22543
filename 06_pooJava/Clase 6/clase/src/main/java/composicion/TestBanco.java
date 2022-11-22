package composicion;

public class TestBanco {
	
	public static void main(String[] args) {
		Cuenta cuenta1=new Cuenta(1, 10000.00);
		Cliente cli1=new Cliente(1, "Juan", "Perez", cuenta1);
		
		cli1.mostrarSaldo();
		cli1.depositar(5000.00);
		

	}

}
