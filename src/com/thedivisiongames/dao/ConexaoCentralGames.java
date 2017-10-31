package com.thedivisiongames.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoCentralGames {
	
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
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/central_games","root","1234");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return con;
	}
}