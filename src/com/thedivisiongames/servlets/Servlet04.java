package com.thedivisiongames.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thedivisiongames.dao.ClienteDAO;
import com.thedivisiongames.entidade.Cliente;
import com.thedivisiongames.entidade.Endereco;

/**
 * Servlet implementation class Servlet04
 */
@WebServlet("/CadastrarUsuario")
public class Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processaRequisicao(request, response);
	}
	
	private void processaRequisicao(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		cadastraUsuario(req);
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}
	
	private void cadastraUsuario(HttpServletRequest req) throws ServletException, IOException {
		
//		int cod_depto = Integer.parseInt(req.getParameter("txtCodDepto"));
//		double salario = Double.parseDouble(req.getParameter("txtSalario"));
		
		String nome = req.getParameter("nomeInput");
		String cpf = req.getParameter("cpfInput");
		String email = req.getParameter("emailInput");
		String senha = req.getParameter("passwordInput");
		String tel = req.getParameter("telInput");
		
		Cliente cli = new Cliente();
			cli.setNome(nome);
			cli.setCpf(cpf);
			cli.setEmail(email);
			cli.setSenha(senha);
			cli.setTelefone(tel);
			
		String cep = req.getParameter("cepInput");
		String logradouro = req.getParameter("logradouroInput");
		String numero = req.getParameter("numeroInput");
		String bairro = req.getParameter("bairroInput");
		String cidade = req.getParameter("cidadeInput");
		String uf = req.getParameter("ufInput");
		
		Endereco end = new Endereco();
			end.setCep(cep);
			end.setLogradouro(logradouro);
			end.setNumero(numero);
			end.setBairro(bairro);
			end.setCidade(cidade);
			end.setEstado(uf);
			
		
		ClienteDAO usuDAO = new ClienteDAO();
			usuDAO.cadastrar(cli, end);
	}
}