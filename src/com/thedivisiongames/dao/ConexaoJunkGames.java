package com.thedivisiongames.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoJunkGames {
	
	public static Connection con = null;
	
	public static Connection conectaBD()
	{

		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
		} 
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		
		try 
		{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/junk_games","root","root");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return con;
	}
}