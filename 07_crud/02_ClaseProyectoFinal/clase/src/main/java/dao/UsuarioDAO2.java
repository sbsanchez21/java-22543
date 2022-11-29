package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Usuario;

public class UsuarioDAO2 {
	
	/**
	 * Valida que el usu y pass existan en la tabla
	 * Usuarios de la DB.
	 * 
	 * @param user
	 * @param pass
	 * @return Si existe devuelve true, si no false 
	 * @throws SQLException 
	 */
	public Boolean validarUsuYPass(String user, String pass) throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Statement st=conexionDB.crearStatement();
		
		ResultSet rs=st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+user+"' AND clave='"+pass+"'");

		return rs.next();
	}

	/**
	 * Busca todos los usuarios de la tabla Usuarios
	 * de la DB.
	 * 
	 * @return Devuelve una lista de Objetos {@link Usuario}
	 * @throws SQLException 
	 */
	public List<Usuario> listarUsuarios() throws SQLException {
		ConexionDB conexionDB=new ConexionDB();
		Statement st=conexionDB.crearStatement();

		ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
		List<Usuario> listUsu=new ArrayList<Usuario>();
		while (rs.next()) {
			Usuario usu=new Usuario(rs.getInt("idusuario"), rs.getString("usuario"), rs.getString("clave"));
			
			listUsu.add(usu);
			
		}
		
		return listUsu;
	}
}
