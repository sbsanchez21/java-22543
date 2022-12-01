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
 * Concentra todas las Crud para tabla provnicas
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
	 */
	public Boolean addProvincia(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

}
