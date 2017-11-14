package teste;

import com.thedivisiongames.dao.ClienteDAO;
import com.thedivisiongames.entidade.Cliente;
import com.thedivisiongames.entidade.Endereco;

public class TesteClienteDAO {

	public static void main(String[] args) {

		cadastraUsuario();
	}

	//@SuppressWarnings("unused")
	private static void cadastraUsuario() 
	{
		Cliente cli = new Cliente();
			cli.setNome("João");
			cli.setEmail("joao6@divisiongames.com.br");
			cli.setCpf("1111111117");
			cli.setSenha("123456");
		
		Endereco end = new Endereco();
			end.setCep("09420020");
			end.setLogradouro("Rua Candido Mota");
			end.setNumero("339");
			end.setBairro("Centro Alto");
			end.setCidade("Ribeirão Pires");
			end.setEstado("SP");

		ClienteDAO cliDAO = new ClienteDAO();
		cliDAO.cadastrar(cli, end);
	}
}