package com.thedivisiongames.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thedivisiongames.dao.ConexaoHorizonGames;
import com.thedivisiongames.dao.ConexaoJunkGames;
import com.thedivisiongames.dao.ConexaoTheDivisionGames;
import com.thedivisiongames.entidade.Produto;

/**
 * Servlet implementation class Servlet05
 */
@WebServlet("/Carrinho") // Mapeamento do servlet que deve ser referenciado na "action" do form
public class Servlet07 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet07() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// Captura o id do produto que foi paramatrizado na URL
		String id_produto = request.getParameter("id");
		String fornecedor = request.getParameter("for");
		
		//Cria uma nova lista
		List<Produto> lista;
		
		// Recupera a sess�o e armazena em uma vari�vel
		HttpSession sessao = request.getSession();
		
		// Recupera a lista da sess�o (mesmo se estiver vazia n�o tem problema, � s� para n�o sobrescrever
		// os itens caso j� esteja com algum objeto nela)
		lista = (List<Produto>) sessao.getAttribute("produto_carrinho");
		
		if(fornecedor.equals("The Division Games"))
		{
			try 
			{
				// Conecta com o banco de dados atrav�s do m�todo "conectaBD" da classe "ConexaoTheDivisionGames"
				Connection con = ConexaoTheDivisionGames.conectaBD();
				
				// Inicia prepared statement
				PreparedStatement pstmt = null;
				
				// Armazena a query no PreparedStatement
				pstmt = con.prepareStatement("SELECT * FROM tb_produto WHERE id_produto = ?");
				
				// Inclui no ponto de interroga��o da query o id recuperado do request
				pstmt.setLong(1, Long.valueOf(id_produto));
				
				// Executa a query e armazena em um ResultSet
				ResultSet rs = pstmt.executeQuery();
				
				// Se tiver pelo menos 1 resultado...
				if(rs.next())
				{
					// Instancia um novo produto e preenche seus atributos com os dados coletados do banco de dados
					Produto produto = new Produto();
						produto.setId(rs.getInt("id_produto"));
						produto.setNome(rs.getString("nome_produto"));
						produto.setDescricao(rs.getString("descricao_produto"));
						produto.setGenero(rs.getString("genero_produto"));
						produto.setPlataforma(rs.getString("plataforma_produto"));
						produto.setValor(rs.getDouble("valor"));
						produto.setFornecedor(fornecedor);
						
						// Se a lista estiver vazia
						if(lista == null)
						{
							// Adiciona um novo array list na variavel lista
							lista = new ArrayList<Produto>();
							
							// Adiciona o objeto produto na lista
							lista.add(produto);
						}
						// Se j� tiver um objeto na lista, s� incrementa
						else
						{
							// Adiciona o objeto produto na lista
							lista.add(produto);
						}
						
						// Recupera o tamanho da lista
						int num_itens_carrinho = lista.size();					
						
						// Adiciona o n�mero de itens do carrinho na variavel de sessao
						sessao.setAttribute("num_itens_carrinho", num_itens_carrinho);
						
						// Adiciona a lista completa na variavel de sessao
						sessao.setAttribute("produto_carrinho", lista);
				}
				
				// Encerra o PreparedStatement
				pstmt.close();
				
				// Encerra o ResultSet
				rs.close();
				
				//Encerra a conex�o com o banco de dados
				con.close();
			}
			// Trata os erros que podem ocorrer durante o processamento
			catch (NumberFormatException | SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		if(fornecedor.equals("Horizon Games"))
		{
			try 
			{
				// Conecta com o banco de dados atrav�s do m�todo "conectaBD" da classe "ConexaoHorizonGames"
				Connection con = ConexaoHorizonGames.conectaBD();
				
				// Inicia prepared statement
				PreparedStatement pstmt = null;
				
				// Armazena a query no PreparedStatement
				pstmt = con.prepareStatement("SELECT * FROM tb_produto WHERE cod_prod_division_games = ?");
				
				// Inclui no ponto de interroga��o da query o id recuperado do request
				pstmt.setLong(1, Long.valueOf(id_produto));
				
				// Executa a query e armazena em um ResultSet
				ResultSet rs = pstmt.executeQuery();
				
				// Se tiver pelo menos 1 resultado...
				if(rs.next())
				{
					// Instancia um novo produto e preenche seus atributos com os dados coletados do banco de dados
					Produto produto = new Produto();
						produto.setId(rs.getInt("cod_prod_division_games"));
						produto.setNome(rs.getString("nome_produto"));
						produto.setDescricao(rs.getString("descricao_produto"));
						produto.setGenero(rs.getString("genero_produto"));
						produto.setPlataforma(rs.getString("plataforma_produto"));
						produto.setValor(rs.getDouble("valor"));
						produto.setFornecedor(fornecedor);
						
						// Se a lista estiver vazia
						if(lista == null)
						{
							// Adiciona um novo array list na variavel lista
							lista = new ArrayList<Produto>();
							
							// Adiciona o objeto produto na lista
							lista.add(produto);
						}
						// Se j� tiver um objeto na lista, s� incrementa
						else
						{
							// Adiciona o objeto produto na lista
							lista.add(produto);
						}
						
						// Recupera o tamanho da lista
						int num_itens_carrinho = lista.size();					
						
						// Adiciona o n�mero de itens do carrinho na variavel de sessao
						sessao.setAttribute("num_itens_carrinho", num_itens_carrinho);
						
						// Adiciona a lista completa na variavel de sessao
						sessao.setAttribute("produto_carrinho", lista);
				}
				
				// Encerra o PreparedStatement
				pstmt.close();
				
				// Encerra o ResultSet
				rs.close();
				
				//Encerra a conex�o com o banco de dados
				con.close();
			}
			// Trata os erros que podem ocorrer durante o processamento
			catch (NumberFormatException | SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		if(fornecedor.equals("Junk Games"))
		{
			try 
			{
				// Conecta com o banco de dados atrav�s do m�todo "conectaBD" da classe "ConexaoJunkGames"
				Connection con = ConexaoJunkGames.conectaBD();
				
				// Inicia prepared statement
				PreparedStatement pstmt = null;
				
				// Armazena a query no PreparedStatement
				pstmt = con.prepareStatement("SELECT * FROM tb_produto WHERE cod_prod_division_games = ?");
				
				// Inclui no ponto de interroga��o da query o id recuperado do request
				pstmt.setLong(1, Long.valueOf(id_produto));
				
				// Executa a query e armazena em um ResultSet
				ResultSet rs = pstmt.executeQuery();
				
				// Se tiver pelo menos 1 resultado...
				if(rs.next())
				{
					// Instancia um novo produto e preenche seus atributos com os dados coletados do banco de dados
					Produto produto = new Produto();
						produto.setId(rs.getInt("cod_prod_division_games"));
						produto.setNome(rs.getString("nome_produto"));
						produto.setDescricao(rs.getString("descricao_produto"));
						produto.setGenero(rs.getString("genero_produto"));
						produto.setPlataforma(rs.getString("plataforma_produto"));
						produto.setValor(rs.getDouble("valor"));
						produto.setFornecedor(fornecedor);
						
						// Se a lista estiver vazia
						if(lista == null)
						{
							// Adiciona um novo array list na variavel lista
							lista = new ArrayList<Produto>();
							
							// Adiciona o objeto produto na lista
							lista.add(produto);
						}
						// Se j� tiver um objeto na lista, s� incrementa
						else
						{
							// Adiciona o objeto produto na lista
							lista.add(produto);
						}
						
						// Recupera o tamanho da lista
						int num_itens_carrinho = lista.size();					
						
						// Adiciona o n�mero de itens do carrinho na variavel de sessao
						sessao.setAttribute("num_itens_carrinho", num_itens_carrinho);
						
						// Adiciona a lista completa na variavel de sessao
						sessao.setAttribute("produto_carrinho", lista);
				}
				
				// Encerra o PreparedStatement
				pstmt.close();
				
				// Encerra o ResultSet
				rs.close();
				
				//Encerra a conex�o com o banco de dados
				con.close();
			}
			// Trata os erros que podem ocorrer durante o processamento
			catch (NumberFormatException | SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		// Redireciona para a p�gina "carrinho.jsp"
		response.sendRedirect("carrinho.jsp");
		
	}
}