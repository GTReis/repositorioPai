package com.thedivisiongames.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Servlet05
 */
@WebServlet("/Logout")
public class Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet06() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// Recupera a sessão que está ativa
		HttpSession sessao = request.getSession();
		
		// Remove os atributos inseridos na sessão
		sessao.removeAttribute("nome");
		sessao.removeAttribute("erro");
		
		// Invalida a sessão
		//sessao.invalidate();
		
		// Redireciona para a página index.jsp
		response.sendRedirect("index.jsp");
	}
}