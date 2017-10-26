package com.thedivisiongames.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.thedivisiongames.entidade.Produto;

public class ProdutoDAO {

	private Connection con = Conexao.conectaBD();
	
	public List<Produto> getLancamentos()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con.prepareStatement("SELECT prod.*, est.valor FROM tb_produto prod INNER JOIN tb_estoque est ON prod.id_produto = est.id_produto ORDER BY data_lancamento DESC LIMIT 0,4");

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
	
	public List<Produto> getPromocoes()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con.prepareStatement("SELECT prod.*, est.valor FROM tb_produto prod INNER JOIN tb_estoque est ON prod.id_produto = est.id_produto ORDER BY valor ASC LIMIT 0,4");

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
	
	/*public List<Produto> getListatodos()
	{
		List<Produto> lista = new ArrayList<Produto>();
		
		try 
		{	
			PreparedStatement pstmt_produto = null; 
			pstmt_produto = con.prepareStatement(
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
	}*/
	
	/*public void cadastrar(Produto produto){
		
		String sql = "INSERT INTO funcionarios (nome, sobrenome, email, cod_depto, salario) VALUES (?,?,?,?,?)";
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, produto.getNome());
			
			pstmt.execute();
			pstmt.close();
			
			System.out.println("Cadastrado com sucesso");
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}*/
}