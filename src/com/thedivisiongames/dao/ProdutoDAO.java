package com.thedivisiongames.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.thedivisiongames.entidade.Produto;

public class ProdutoDAO 
{	
	public List<Produto> getLancamentos_division()
	{
		Connection con1 = ConexaoTheDivisionGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con1.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ");// ORDER BY data_lancamento DESC LIMIT 0,4

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("The Division Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con1.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getLancamentos_division
	
	public List<Produto> getLancamentos_horizon()
	{
		Connection con2 = ConexaoHorizonGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con2.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ");//ORDER BY data_lancamento DESC LIMIT 0,4

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("Horizon Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con2.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getLancamentos_horizon
	
	public List<Produto> getLancamentos_junk()
	{
		Connection con3 = ConexaoJunkGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con3.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ");// ORDER BY data_lancamento DESC LIMIT 0,4

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setFornecedor("Junk Games");
				lista.add(produto);
			}
			rs.close();
			pstmt.close();
			con3.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getLancamentos_junk
	
	public List<Produto> getLancamentos()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_horizon = new ArrayList<Produto>();
		List<Produto> lista_junk = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		
		lista_division = getLancamentos_division();
		lista_horizon = getLancamentos_horizon();
		lista_junk = getLancamentos_junk();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_horizon);
		lista_geral.addAll(lista_junk);
		
		Collections.sort(lista_geral);
		
		int x = 0;
		while(x < lista_geral.size())
		{
			for(int i=0; i< lista_geral.size()-1; i++)
			{
				if(lista_geral.get(i).getId() == lista_geral.get(i+1).getId())
				{
					lista_geral.remove(i+1);
				}
			}
			x++;
		}
		
		Collections.sort(lista_geral, Produto.OrdenaMaiorData);
		
		return lista_geral;
	}// Fim getLancamentos
	
	public List<Produto> getTodos_lancamentos()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_horizon = new ArrayList<Produto>();
		List<Produto> lista_junk = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		
		lista_division = getLancamentos_division();
		lista_horizon = getLancamentos_horizon();
		lista_junk = getLancamentos_junk();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_horizon);
		lista_geral.addAll(lista_junk);
		
		Collections.sort(lista_geral);
		
		Collections.sort(lista_geral, Produto.OrdenaMaiorData);
		
		return lista_geral;
	}// Fim getTodos_lancamentos
	
	public List<Produto> getPromocoes_division()
	{
		Connection con1 = ConexaoTheDivisionGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con1.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ORDER BY valor ASC");// LIMIT 0,4

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("The Division Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con1.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getPromocoes_division
	
	public List<Produto> getPromocoes_horizon()
	{
		Connection con2 = ConexaoHorizonGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con2.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ORDER BY valor ASC");// LIMIT 0,4

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("Horizon Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con2.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getPromocoes_horizon
	
	public List<Produto> getPromocoes_junk()
	{
		Connection con3 = ConexaoJunkGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con3.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ORDER BY valor ASC");// LIMIT 0,4

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("Junk Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con3.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getPromocoes_junk
	
	public List<Produto> getPromocoes()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_horizon = new ArrayList<Produto>();
		List<Produto> lista_junk = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		
		
		lista_division = getPromocoes_division();
		lista_horizon = getPromocoes_horizon();
		lista_junk = getPromocoes_junk();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_horizon);
		lista_geral.addAll(lista_junk);
		
		Collections.sort(lista_geral);
		
		int x = 0;
		while(x < lista_geral.size())
		{
			for(int i=0; i< lista_geral.size()-1; i++)
			{
				if(lista_geral.get(i).getId() == lista_geral.get(i+1).getId())
				{
					lista_geral.remove(i+1);
				}
			}
			x++;
		}
		
		Collections.sort(lista_geral, Produto.OrdenaMenorValor);
		
		return lista_geral;
	}// Fim getPromocoes
	
	public List<Produto> getTodos_promocoes()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_horizon = new ArrayList<Produto>();
		List<Produto> lista_junk = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		
		
		lista_division = getPromocoes_division();
		lista_horizon = getPromocoes_horizon();
		lista_junk = getPromocoes_junk();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_horizon);
		lista_geral.addAll(lista_junk);
		
		Collections.sort(lista_geral);
		Collections.sort(lista_geral, Produto.OrdenaMenorValor);
		
		return lista_geral;
	}// Fim getTodos_promocoes
	
	public List<Produto> getPc_division()
	{
		Connection con1 = ConexaoTheDivisionGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con1.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' AND plataforma_produto = 'PC' ");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("The Division Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con1.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getPc_division
	
	public List<Produto> getPc_horizon()
	{
		Connection con2 = ConexaoHorizonGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con2.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' AND plataforma_produto = 'PC' ");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("Horizon Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con2.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Produto> getPc_junk()
	{
		Connection con3 = ConexaoJunkGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con3.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' AND plataforma_produto = 'PC' ");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setFornecedor("Junk Games");
				lista.add(produto);
			}
			rs.close();
			pstmt.close();
			con3.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Produto> getTodos_pc()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_horizon = new ArrayList<Produto>();
		List<Produto> lista_junk = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		
		lista_division = getPc_division();
		lista_horizon = getPc_horizon();
		lista_junk = getPc_junk();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_horizon);
		lista_geral.addAll(lista_junk);
		
		Collections.sort(lista_geral, Produto.OrdenaMaiorData);
		
		return lista_geral;
	}
	
	
	public List<Produto> getPs3_division()
	{
		Connection con1 = ConexaoTheDivisionGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con1.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' AND plataforma_produto = 'PS3' ");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("The Division Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con1.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}// Fim getPc_division
	
	public List<Produto> getPs3_horizon()
	{
		Connection con2 = ConexaoHorizonGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con2.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' AND plataforma_produto = 'PS3' ");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setFornecedor("Horizon Games");
				lista.add(produto);
				
			}
			rs.close();
			pstmt.close();
			con2.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Produto> getPs3_junk()
	{
		Connection con3 = ConexaoJunkGames.conectaBD();
		
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con3.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' AND plataforma_produto = 'PS3' ");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setFornecedor("Junk Games");
				lista.add(produto);
			}
			rs.close();
			pstmt.close();
			con3.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Produto> getTodos_ps3()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_horizon = new ArrayList<Produto>();
		List<Produto> lista_junk = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		
		lista_division = getPc_division();
		lista_horizon = getPc_horizon();
		lista_junk = getPc_junk();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_horizon);
		lista_geral.addAll(lista_junk);
		
		Collections.sort(lista_geral, Produto.OrdenaMaiorData);
		
		return lista_geral;
	}
	
	
}