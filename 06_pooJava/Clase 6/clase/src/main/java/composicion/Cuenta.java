package composicion;

public class Cuenta {
	private Integer id;
	private Long numero;
	private Double saldo;
	
	public Cuenta(Integer id, Double saldo) {
		super();
		this.id = id;
		this.saldo = saldo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getNumero() {
		return numero;
	}

	public void setNumero(Long numero) {
		this.numero = numero;
	}

	public Double getSaldo() {
		return saldo;
	}

	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}
	
	public void depositar(Double dinero) {
		this.saldo+=dinero;
		

	}

}
