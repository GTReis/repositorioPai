package com.thedivisiongames.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.thedivisiongames.entidade.Produto;

public class ProdutoDAO {

	private Connection con1 = ConexaoTheDivisionGames.conectaBD();
	private Connection con2 = ConexaoCentralGames.conectaBD();
	private Connection con3 = ConexaoUzGames.conectaBD();
	
	public List<Produto> getLancamentos_division()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con1.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ORDER BY data_lancamento DESC LIMIT 0,4");

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
	}
	
	public List<Produto> getLancamentos_central()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con2.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ORDER BY data_lancamento DESC LIMIT 0,4");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setValor(rs.getDouble("valor"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setFornecedor("Central Games");
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
	
	public List<Produto> getLancamentos_uz()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con3.prepareStatement("SELECT * FROM tb_produto prod WHERE NOT valor IS NULL AND valor <> 0 AND flg_ativo = 'S' ORDER BY data_lancamento DESC LIMIT 0,4");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("cod_prod_division_games"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setData(rs.getDate("data_lancamento"));
					produto.setValor(rs.getDouble("valor"));
					produto.setFornecedor("Uz Games");
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
	
	public List<Produto> getLancamentos()
	{
		List<Produto> lista_division = new ArrayList<Produto>();
		List<Produto> lista_central = new ArrayList<Produto>();
		List<Produto> lista_uz = new ArrayList<Produto>();
		List<Produto> lista_geral = new ArrayList<Produto>();
		List<Produto> lista_final = new ArrayList<Produto>();
		List<Produto> lista_temp = new ArrayList<Produto>();
		
		
		lista_division = getLancamentos_division();
		lista_central = getLancamentos_central();
		lista_uz = getLancamentos_uz();
		
		lista_geral.addAll(lista_division);
		lista_geral.addAll(lista_central);
		lista_geral.addAll(lista_uz);
		
		
		// Itera a lista para comparar se há valores com id igual, e caso encontre mantém o de maior valor
//		for(int i=0; i<lista_geral.size(); i++)
//		{
//			for(int x=0; x<lista_geral.size(); x++)
//			{
//				if(lista_geral.get(i).getId() == lista_geral.get(x).getId())
//				{
//					if(lista_geral.get(i).getValor() > lista_geral.get(x).getValor())
//					{
//						lista_geral.remove(x);
//					}
//				}
//			}
//		}
		
//		for(int i=0; i<lista_geral.size(); i++)
//		{
//			for(int x=0; x<lista_geral.size(); x++)
//			{
//				lista_geral.removeIf((Produto prod)->prod.getId() == prod.getId());
//			}
//		}
		
//		for(Produto prod : lista_geral)
//		{
//			if(lista_geral.contains(prod.getId()))
//			{
//				lista_temp.add(prod);
//			}
//		}
		
		Collections.sort(lista_geral);
		Collections.sort(lista_geral, Produto.OrdenaMaiorData);
		
		int x = 0;
		while(x < lista_geral.size())
		{
			for(int i=0; i<lista_geral.size(); i++)
			{
				if(lista_geral.get(i).getId() == lista_geral.get(i+1).getId())
				{
					lista_geral.remove(i+1);
					break;
				}
			}
			x++;
		}
		
		return lista_geral;
	}
	
	public List<Produto> getPromocoes()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try
		{
			PreparedStatement pstmt = null;
			pstmt = con1.prepareStatement("SELECT * FROM tb_produto ORDER BY valor ASC LIMIT 0,4");

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					//produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setValor(rs.getDouble("valor"));
				lista.add(produto);
				
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
	
	public List<Produto> getListatodos()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{	
			PreparedStatement pstmt_produto = null; 
			pstmt_produto = con1.prepareStatement(
					//"SELECT id_produto FROM tb_produto"
					"SELECT * FROM tb_produto prod "
					+ "INNER JOIN tb_produto_plataforma prod_plat ON prod.id_produto = prod_plat.id_produto "
					+ "INNER JOIN tb_plataforma plat ON prod_plat.id_plataforma = plat.id_plataforma"
					);
			
			ResultSet rs = pstmt_produto.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setFlg_ativo(rs.getString("flg_ativo"));
					
					produto.setPlataforma(rs.getString("des_plataforma"));
				lista.add(produto);
				
			}
			rs.close();
			pstmt_produto.close();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lista;
	}
	
	public void cadastrar(Produto produto){
		
		String sql = "INSERT INTO funcionarios (nome, sobrenome, email, cod_depto, salario) VALUES (?,?,?,?,?)";
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con1.prepareStatement(sql);
			
			pstmt.setString(1, produto.getNome());
			
			pstmt.execute();
			pstmt.close();
			
			System.out.println("Cadastrado com sucesso");
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
}