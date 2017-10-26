package com.thedivisiongames.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thedivisiongames.dao.Conexao;
import com.thedivisiongames.entidade.Produto;
import com.thedivisiongames.entidade.Imagem;
import com.thedivisiongames.dao.ImagemDAO;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/Produto")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet02() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id_produto = request.getParameter("id");
		
		try 
		{
			Connection con = Conexao.conectaBD();
			
			PreparedStatement stmt = con.prepareStatement("SELECT prod.*, est.valor FROM tb_produto prod INNER JOIN tb_estoque est ON prod.id_produto = est.id_produto WHERE prod.id_produto = ?");
			stmt.setLong(1, Long.valueOf(id_produto));
			ResultSet rs = stmt.executeQuery();

			if(rs.next())
			{
				Produto produto = new Produto();
					produto.setId(rs.getInt("id_produto"));
					produto.setNome(rs.getString("nome_produto"));
					produto.setDescricao(rs.getString("descricao_produto"));
					produto.setGenero(rs.getString("genero_produto"));
					produto.setPlataforma(rs.getString("plataforma_produto"));
					produto.setValor(rs.getDouble("valor"));
					
					request.setAttribute("produto", produto);
					
					ImagemDAO imagem = new ImagemDAO();
					
					List<Imagem> lista = new ArrayList<Imagem>();
					/* Método para capturar imagens que não são a capa do jogo para popular a galeria de imagens na tela de produto */
					lista = imagem.galeria(id_produto);
					
					request.setAttribute("imagem", lista);
			}
			stmt.close();
			rs.close();
			con.close();
		}
		catch (NumberFormatException | SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("produto.jsp");
		rd.forward(request, response);
		
	}	
}