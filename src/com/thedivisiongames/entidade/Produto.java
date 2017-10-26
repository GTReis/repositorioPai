package com.thedivisiongames.entidade;

public class Produto {

	int id;
	String nome;
	String descricao;
	String genero;
	String flg_ativo;
	String plataforma;
	Double valor;
	
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	public String getPlataforma() {
		return plataforma;
	}
	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}
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
	
}