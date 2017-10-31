package com.thedivisiongames.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.thedivisiongames.entidade.Imagem;

public class ImagemDAO {

	private Connection con = ConexaoTheDivisionGames.conectaBD();
	
	public List<Imagem> galeria(String id)
	{
		List<Imagem> lista = new ArrayList<Imagem>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con.prepareStatement("SELECT id_imagem FROM tb_imagem WHERE flg_capa = 'N' AND id_produto = ?");
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Imagem imagem = new Imagem();
					imagem.setId(rs.getInt("id_imagem"));
				lista.add(imagem);
			}
			rs.close();
			pstmt.close();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}
	
}