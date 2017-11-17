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
		// Captura o id do produto que foi paramatrizada na URL
		String id_produto = request.getParameter("id");
		String fornecedor = request.getParameter("for");
		
		// Conecta com o banco de dados atrav�s do m�todo "conectaBD" da classe "ConexaoTheDivisionGames"
		Connection con = ConexaoTheDivisionGames.conectaBD();
		
		try 
		{
			List<Produto> lista;
			
			// Recupera a sess�o e armazena em uma vari�vel
			HttpSession sessao = request.getSession();
			lista = (List<Produto>) sessao.getAttribute("produto_carrinho");
			
			PreparedStatement pstmt = null;
			pstmt = con.prepareStatement("SELECT * FROM tb_produto WHERE id_produto = ?");
			pstmt.setLong(1, Long.valueOf(id_produto));
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
			{
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
					else
					{
						// Adiciona o objeto produto na lista
						lista.add(produto);
					}
					
					// Armazena o tamanho da lista
					int num_itens_carrinho = lista.size();					
					
					//System.out.println(num_itens_carrinho);
					
					// Adiciona o n�mero de itens do carrinho na variavel de sessao
					sessao.setAttribute("num_itens_carrinho", num_itens_carrinho);
					
					// Adiciona a lista completa na variavel de sessao
					sessao.setAttribute("produto_carrinho", lista);
			}
			pstmt.close();
			rs.close();
			con.close();
			
			// Cria a vari�vel de sess�o "erro" e insere "Usu�rio ou senha incorretos"
			//sessao.setAttribute("erro", "Usu�rio ou senha incorretos");
			
			// Encerra o PreparedStatement
			pstmt.close();
			
			// Encerra o ResultSet
			rs.close();
			
			//Encerra a conex�o com o banco de dados
			con.close();
			
			// Redireciona para a p�gina "carrinho.jsp"
			response.sendRedirect("carrinho.jsp");
		}
		// Trata os erros que podem acontecer durante o processamento
		catch (NumberFormatException | SQLException e) 
		{
			e.printStackTrace();
		}
	}
}