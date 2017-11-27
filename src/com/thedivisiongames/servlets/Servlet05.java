package com.thedivisiongames.servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
@WebServlet("/ValidaLogin") // Mapeamento do servlet que deve ser referenciado na "action" do form
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
		// Conecta com o banco de dados através do método "conectaBD" da classe "ConexaoTheDivisionGames"
		Connection con = ConexaoTheDivisionGames.conectaBD();
		
		try 
		{
			// Recupera a sessão e armazena em uma variável
			HttpSession sessao = request.getSession();
			
			// Recupera os dados do formulário
			String email = request.getParameter("inputEmail");
			String senha = request.getParameter("inputSenha");
			
			// Instancia o MessageDigest, responsável pela criptografia
			MessageDigest mdSHA256 = MessageDigest.getInstance("SHA-256");
			
			// Criptografa a variavel "senha" recuperada do formulario digitado pelo usuário
			byte senha_digitada[] = mdSHA256.digest(senha.getBytes("UTF-8"));
			
			// Inicia a veriável do tipo PreparedStatement
			PreparedStatement pstmt = null;
			
			// Armazena na variável do PreparedStatement uma string da query do banco de dados
			pstmt = con.prepareStatement("SELECT id_cli, nome_cli, senha_cli FROM tb_cliente WHERE email_cli = ? ");
			
			// Insere no primeiro "?" a variável que armazenou o email digitado pelo usuário no form
			pstmt.setString(1, email);
			
			// Executa a query e armazena o resultado em uma variável do ResultSet
			ResultSet rs = pstmt.executeQuery();
			
			// Verifica se existe o primeiro resultado da query
			if(rs.first())
			{
				// Compara a variável criptografada que foi digitada pelo usuário com a criptografada do banco de dados
				if( MessageDigest.isEqual( senha_digitada, rs.getBytes("senha_cli") ) )
				{
					// Cria a variável de sessão "nome" e insere o nome do cliente que veio do banco de dados
					sessao.setAttribute("id", rs.getString("id_cli"));
					sessao.setAttribute("nome", rs.getString("nome_cli"));
				}
				else
				{
					// Cria a variável de sessão "erro" e insere "Usuário ou senha incorretos"
					sessao.setAttribute("erro", "Usuário ou senha incorretos");
				}
			}
			else
			{
				// Cria a variável de sessão "erro" e insere "Usuário ou senha incorretos"
				sessao.setAttribute("erro", "Usuário ou senha incorretos");
			}
			
			// Encerra o PreparedStatement
			pstmt.close();
			
			// Encerra o ResultSet
			rs.close();
			
			//Encerra a conexão com o banco de dados
			con.close();
			
			// Redireciona para a página "index.jsp"
			//response.sendRedirect("index.jsp");
			
			// Zera a variavel da pagina solicitante
			String pagina_solicitante = null;
			
			// Recupera parte da url da página solicitante e armazena na variavel 
			pagina_solicitante = request.getHeader("Referer");
			
			//System.out.println(pagina_solicitante);
			
			if(pagina_solicitante.equals("http://localhost:8080/The_Division_Games/Finalizacao"))
			{
				// Redireciona de volta para a página solicitante
				response.sendRedirect("finalizacao.jsp");
			}
			else
			{
				// Redireciona de volta para a página solicitante
				response.sendRedirect(pagina_solicitante);
			}
			
			
		}
		// Trata os erros que podem acontecer durante o processamento
		catch (NumberFormatException | SQLException | NoSuchAlgorithmException e) 
		{
			e.printStackTrace();
		}
	}
}