package com.thedivisiongames.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thedivisiongames.entidade.Carrinho;

/**
 * Servlet implementation class Servlet02
 */
@WebServlet("/Finalizacao")
public class Servlet09 extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet09() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// Recupera a sessão e armazena em uma variável
		HttpSession sessao = request.getSession();
		
		int tamanho_lista = Integer.parseInt(request.getParameter("tamanho_lista"));
		String total = request.getParameter("total");
		
		List<Carrinho> lista = new ArrayList<Carrinho>();
		
		for(int i = 1 ; i < tamanho_lista+1 ; i++)
		{
			Carrinho car = new Carrinho();
				car.setId(request.getParameter("id"+i));
				car.setNome(request.getParameter("nome"+i));
				car.setGenero(request.getParameter("genero"+i));
				car.setPlataforma(request.getParameter("plataforma"+i));
				car.setFornecedor(request.getParameter("fornecedor"+i));
				car.setPreco(request.getParameter("valor"+i));
				
				System.out.println(request.getParameter("qtd"+i));
				
				car.setQtd(request.getParameter("qtd"+i));
				car.setSubtotal(request.getParameter("subtotal"+i));
				
				lista.add(car);
		}
		
		sessao.setAttribute("carrinho", lista);
		sessao.setAttribute("total", total);
		
		RequestDispatcher rd = request.getRequestDispatcher("finalizacao.jsp");
		rd.forward(request, response);
		
	}	
}