package com.thedivisiongames.dao;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.thedivisiongames.entidade.Cliente;
import com.thedivisiongames.entidade.Endereco;

public class ClienteDAO 
{
	public void cadastrar(Cliente cliente, Endereco endereco)
	{	
		Connection con = ConexaoTheDivisionGames.conectaBD();
		
		try 
		{
			PreparedStatement pstmt = null; 
			pstmt = con.prepareStatement("INSERT INTO tb_cliente (nome_cli, cpf_cli, email_cli, data_cadastro, flg_ativo, senha_cli, telefone) VALUES (?,?,?,?,?,?,?)");
			
			pstmt.setString(1, cliente.getNome());
			pstmt.setString(2, cliente.getCpf());
			pstmt.setString(3, cliente.getEmail());
			pstmt.setTimestamp(4, java.sql.Timestamp.valueOf(java.time.LocalDateTime.now()));
			pstmt.setString(5, "S");
			
			MessageDigest algorithmSHA256 = MessageDigest.getInstance("SHA-256");
			byte messageDigestSHA256[] = algorithmSHA256.digest(cliente.getSenha().getBytes("UTF-8"));
			
			pstmt.setBytes(6, messageDigestSHA256);
			pstmt.setString(7, cliente.getTelefone());
			
			pstmt.execute();
			pstmt.close();
			
			Statement stmt = null; 
			stmt = con.createStatement();
			ResultSet rs = null;
			rs = stmt.executeQuery("SELECT id_cli FROM tb_cliente");
            rs.last();
            int id_novo_cliente = rs.getInt("id_cli");
			
            PreparedStatement pstmt2 = null; 
			pstmt2 = con.prepareStatement("INSERT INTO tb_endereco (id_cliente, cep, logradouro, numero, bairro, cidade, estado) VALUES (?,?,?,?,?,?,?)");
			
			pstmt2.setInt(1, id_novo_cliente);
			pstmt2.setString(2, endereco.getCep());
			pstmt2.setString(3, endereco.getLogradouro());
			pstmt2.setString(4, endereco.getNumero());
			pstmt2.setString(5, endereco.getBairro());
			pstmt2.setString(6, endereco.getCidade());
			pstmt2.setString(7, endereco.getEstado());
			
			pstmt2.execute();
			pstmt2.close();

			System.out.println("Endereco Cadastrado com Sucesso");
		}
		catch (SQLException | UnsupportedEncodingException | NoSuchAlgorithmException e) 
		{
			e.printStackTrace();
		}
	}
}