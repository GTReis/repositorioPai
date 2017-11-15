package com.thedivisiongames.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thedivisiongames.entidade.Produto;

/**
 * Servlet implementation class Servlet08
 */
@WebServlet("/RemoveItemCarrinho") // Mapeamento do servlet que deve ser referenciado na "action" do form
public class Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet08() {
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
		int id_produto = Integer.parseInt(request.getParameter("id"));
		
		List<Produto> lista;
		
		// Recupera a sessão e armazena em uma variável
		HttpSession sessao = request.getSession();
		lista = (List<Produto>) sessao.getAttribute("produto_carrinho");
		
		for(int i=0; i< lista.size(); i++)
		{
			if(lista.get(i).getId() == id_produto)
			{
				lista.remove(i);
				//break;
			}
		}
		
		int num_itens_carrinho = lista.size();					
		
		sessao.setAttribute("num_itens_carrinho", num_itens_carrinho);
		sessao.setAttribute("produto_carrinho", lista);
		
		// Redireciona para a página "carrinho.jsp"
		response.sendRedirect("carrinho.jsp");
	}
}