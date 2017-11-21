package teste;

import java.util.List;

import com.thedivisiongames.dao.ProdutoDAO;
import com.thedivisiongames.entidade.Produto;

public class ExibirListas {

	public static void main(String[] args) {
		
		listaTodos();
		
	}
	
	@SuppressWarnings("unused")
	private static void listaTodos()
	{
		
		ProdutoDAO produtodao = new ProdutoDAO();
		
		List<Produto> lista = produtodao.getLancamentos();
		
		for (Produto prod : lista) {
			System.out.println("ID: "+prod.getId());
			System.out.println("Nome: "+prod.getNome());
			System.out.println("Valor: "+prod.getValor());
			System.out.println("Fornecedor: "+prod.getFornecedor());
		}
//		System.out.println(lista.get(7).getNome());
	}
}