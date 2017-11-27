package com.thedivisiongames.entidade;

import java.util.Comparator;
import java.util.Date;

public class Produto implements Comparable<Produto>
{
	
	@Override
	public int compareTo(Produto prod) 
	{
		if (this.id < prod.getId()) {
            return -1;
        }
        if (this.id > prod.getId()) {
            return 1;
        }
        return compareTo2(prod);
	}
	
	public int compareTo2(Produto prod) 
	{
		if (this.valor < prod.getValor()) {
            return -1;
        }
        if (this.valor > prod.getValor()) {
            return 1;
        }
        return 0;
	}
	
	public static Comparator<Produto> OrdenaMenorValor = new Comparator<Produto>() 
	{
        @Override
        public int compare(Produto prod1, Produto prod2) 
        {
        	if (prod1.valor > prod2.getValor()) {
  	          return 1;
	  	     }
	  	     if (prod1.valor < prod2.getValor()) {
	  	          return -1;
	  	     }
	  	     return 0;
        }
    };

	public static Comparator<Produto> OrdenaMaiorData = new Comparator<Produto>() 
	{
        @Override
        public int compare(Produto prod1, Produto prod2) 
        {
        	if (prod1.data.before(prod2.getData())) {
  	          return 1;
	  	     }
	  	     if (prod1.data.after(prod2.getData())) {
	  	          return -1;
	  	     }
	  	     return 0;
        }
    };
    
	int id;
	String nome;
	String descricao;
	String genero;
	String flg_ativo;
	String plataforma;
	Double valor;
	Date data;
	String fornecedor;
	int qdt;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getFlg_ativo() {
		return flg_ativo;
	}

	public void setFlg_ativo(String flg_ativo) {
		this.flg_ativo = flg_ativo;
	}

	public String getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(String fornecedor) {
		this.fornecedor = fornecedor;
	}

	public int getQdt() {
		return qdt;
	}

	public void setQdt(int qdt) {
		this.qdt = qdt;
	}
	
		
}