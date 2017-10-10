package com.thedivisiongames.dao;

import java.sql.*;

public class Conexao {
	
	public static Connection getConnection(){
		
		Connection con = null;
		
		String host = "localhost";
		String user = "root";
		String password = null;
		String db = "test";
		
		try 
		{
			Class.forName("com.msql.jdbc.Driver");
		} 
		catch (ClassNotFoundException ex) 
		{
			System.out.println("Classe n�o encontrada "+ex.getMessage());
		}
		
		try
		{
			con = DriverManager.getConnection("jdbc:mysql://" + host + ":3306/" + db + "?autoReconnect=true",user,password);
			
			System.out.println("Conectado com Sucesso!");
		}
		catch (SQLException e)
		{
			System.out.println("N�o � poss�vel conectar ao banco de dados. Erro: "+ e.getMessage());
		}
		
		return con;
	}	
}