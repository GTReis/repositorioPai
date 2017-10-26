package teste;

import java.util.List;

import com.thedivisiongames.dao.ImagemDAO;
import com.thedivisiongames.entidade.Imagem;

public class TesteImagemDAO {

	public static void main(String[] args) {
		
		buscarImagem();
		
	}
	
	
	private static void buscarImagem()
	{
		
		ImagemDAO imagem = new ImagemDAO();
		
		List<Imagem> lista = imagem.galeria("3");
		
		for (Imagem img : lista) {
			System.out.println("ID: "+img.getId());
		}
		
	}
	
	
}