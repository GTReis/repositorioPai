package com.thedivisiongames.servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.thedivisiongames.dao.ConexaoTheDivisionGames;

/**
 * Servlet implementation class Servlet05
 */
@WebServlet("/ValidaLogin")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet05() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection con = ConexaoTheDivisionGames.conectaBD();
		
		try 
		{
			HttpSession sessao = request.getSession();
			
			String email = request.getParameter("inputEmail");
			String senha = request.getParameter("inputSenha");
			
			MessageDigest mdSHA256 = MessageDigest.getInstance("SHA-256");
			byte senha_digitada[] = mdSHA256.digest(senha.getBytes("UTF-8"));
			
			PreparedStatement pstmt = null;
			pstmt = con.prepareStatement("SELECT nome_cli, senha_cli FROM tb_cliente WHERE email_cli = ? ");
			pstmt.setString(1, email);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.first())
			{
				if( MessageDigest.isEqual( senha_digitada, rs.getBytes("senha_cli") ) )
				{
					sessao.setAttribute("nome", rs.getString("nome_cli"));
				}
				else
				{
					sessao.setAttribute("erro", "Usuário ou senha incorretos");
				}
			}
			else
			{
				sessao.setAttribute("erro", "Usuário ou senha incorretos");
			}
			
			pstmt.close();
			rs.close();
			con.close();
			
			response.sendRedirect("index.jsp");
			
//			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//			rd.forward(request, response);
		} 
		catch (NumberFormatException | SQLException | NoSuchAlgorithmException e) 
		{
			e.printStackTrace();
		}
	}
}