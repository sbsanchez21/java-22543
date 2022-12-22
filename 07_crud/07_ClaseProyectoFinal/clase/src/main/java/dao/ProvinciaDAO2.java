package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Provincia;

/**
 * DAO de tabla Provincias
 * Concentra todas las Crud para tabla provincia
 * @author Santos
 *
 */
public class ProvinciaDAO2 {
	
	/**
	 * Lista todas la provincias de la tabla Provincia}
	 * 
	 * @return List de objetos {@link Provincia}
	 * @throws SQLException 
	 */
	public List<Provincia> listarProvincias() throws SQLException {
		//me conecto a la db
		ConexionDB conexionDB=new ConexionDB();
		Statement st=conexionDB.crearStatement();

		//ejecuto la consulta sql para traer todos los usuarios
		//coloco el resultado de la consulta en rs
		//rs tiene un listado con todos los usuarios
		ResultSet rs=st.executeQuery("SELECT * FROM provincias");
		
		List<Provincia> listProv=new ArrayList<Provincia>();
		
		//recorro rs fila por fila
		//creo un obj Usuario x cada fila para respetar el POO
		while (rs.next()) {
			Provincia prov=new Provincia(rs.getInt("idprovincia"), rs.getString("nombre"));
			
			listProv.add(prov);
			
		}
		
		return listProv;
	}
	
	/**
	 * Inserta una provincia en la tabla Provincia
	 * 
	 * @param nombre Nombre de la provincia a insertar
	 * 
	 * @return true si inserto ok, false si no insert
	 * @throws SQLException 
	 */
	public Boolean addProvincia(String nombre) throws SQLException {
		//TODO: MANEJAR si existe prov
		Boolean existeProv=this.existeProvincia(nombre);
		if (existeProv) {
			//error
		} else {
			ConexionDB con=new ConexionDB();
			Statement st=con.crearStatement();
			
			Integer insertOk=st.executeUpdate("INSERT INTO provincias (nombre) VALUES ('"+nombre+"')");
			
			return insertOk==1;
		}

		return false;
	}
	
	/**
	 * Verifica si existe la provincia 
	 * @param nombre String nombre provincia
	 * @return true si existe, false si no
	 * @throws SQLException 
	 */
	public Boolean existeProvincia(String nombre) throws SQLException {
		ConexionDB con=new ConexionDB();
		Statement st=con.crearStatement();
		
		ResultSet rs=st.executeQuery("SELECT * FROM provincias WHERE nombre='"+nombre+"'");

		return rs.next(); //sino tiene resultado next() devuelve false, sino next() true
	}
	
	public Boolean updProvincia(Integer idProvincia, String nombre) throws SQLException {
		ConexionDB con=new ConexionDB();
		Statement st=con.crearStatement();
		
		Integer cantUpd=st.executeUpdate("UPDATE provincias SET nombre='"+nombre+"' WHERE idprovincia="+idProvincia+"");

		return cantUpd==1;
	}

	/**
	 * Elimina una provincia de la db
	 * 
	 * @param idProvincia
	 * @return true si del ok, false si no
	 * @throws SQLException
	 */
	public Boolean delProvincia(Integer idProvincia) throws SQLException  {
		ConexionDB con=new ConexionDB();
		Statement st=con.crearStatement();
		
		Integer cantDel=st.executeUpdate("DELETE FROM provincias WHERE idprovincia="+idProvincia);

		return cantDel==1;
			
	}	
	
}
