package com.cruddao.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cruddao.bean.Cliente;

public class ClienteDao {
	
	/* METODO PARA CONECTAR AO BANCO DE DADOS	*/  
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cruddao","root","");
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	
	/* METODO DELETAR	*/  
	public static int deletarCliente(Cliente c) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("DELETE FROM cliente WHERE id=?");
			ps.setInt(1, c.getId());
			status=ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	/* METODO CRIAR	*/ 
	public static int addCliente(Cliente c) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO cliente (cpf, nome, sobrenome, email, sexo, pais) VALUES (?, ?, ?, ?, ?, ?)");
			ps.setString(1, c.getCpf());
			ps.setString(2, c.getNome());
			ps.setString(3, c.getSobrenome());
			ps.setString(4, c.getEmail());
			ps.setString(5, c.getSexo());
			ps.setString(6, c.getPais());
			status = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static Cliente getRegistroById(int id) {
		Cliente cliente = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM cliente WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setCpf(rs.getString("cpf"));
				cliente.setNome(rs.getString("nome"));
				cliente.setSobrenome(rs.getString("sobrenome"));
				cliente.setEmail(rs.getString("email"));
				cliente.setSexo(rs.getString("sexo"));
				cliente.setPais(rs.getString("pais"));
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return cliente;
	}
	
	
	/* METODO ATUALIZAR	*/ 
	public static int updateCliente(Cliente c) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE cliente SET cpf=?, " + "nome=?, sobrenome=?, email=?, sexo=?, pais=? WHERE id=?");
			
			ps.setString(1, c.getCpf());
			ps.setString(2, c.getNome());
			ps.setString(3, c.getSobrenome());
			ps.setString(4, c.getEmail());
			ps.setString(5, c.getSexo());
			ps.setString(6, c.getPais());
			ps.setInt(7, c.getId());
			status = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	/* METODO LISTAR	*/ 
	public static List<Cliente> getAllClientes() {
		List<Cliente> list = new ArrayList<Cliente>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM cliente");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Cliente cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setCpf(rs.getString("cpf"));
				cliente.setNome(rs.getString("nome"));
				cliente.setSobrenome(rs.getString("sobrenome"));
				cliente.setEmail(rs.getString("email"));
				cliente.setSexo(rs.getString("sexo"));
				cliente.setPais(rs.getString("pais"));
				list.add(cliente);
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return list;

	}
}
