package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {
	// Estabelecer a conexão com o BD
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/lifestyleviagensmei";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1234abc";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	
	private Connection conectar() throws ClassNotFoundException {
		Connection con = null;	
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
			return con;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}		
	}
	
	public void inserirCliente(Clientes clientes) {
		//Criar um objeto para receber o camando em SQL
		String sql = "insert into cliente (nome,sobrenome,dataNascimento,cpf,nacionalidade,celular,sexo,email) values (?,?,?,?,?,?,?,?)";		
		try {
			//Abrir a conexão com o BD
			Connection con = conectar();
			//Criar um stattement
			PreparedStatement stm = con.prepareStatement(sql);
			//stm.setString(1,clientes.getIdclientes());
			stm.setString(1,clientes.getNome());
			stm.setString(2,clientes.getSobrenome());
			stm.setString(3,clientes.getDataNascimento());
			stm.setString(4,clientes.getCpf());
			stm.setString(5,clientes.getNacionalidade());
			stm.setString(6,clientes.getCelular());
			stm.setString(7,clientes.getSexo());
			stm.setString(8,clientes.getEmail());
			//Executar a Query
			stm.execute();
			//Fechar a conexão com o BD
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}		
	}
	
    public ArrayList<Clientes>	listarClientes() {
    	//Criar a lista de clientes com os dados dos clientes
    	ArrayList<Clientes> clientes = new ArrayList<>();
    	
    	//Criar um objeto para receber o camando em SQL
    	String sql = "select * from cliente order by nome";
    	try {
    		//Abrir a conexão com o BD
    		Connection con = conectar();
    		//Criar o statement
    		PreparedStatement stm = con.prepareStatement(sql);
    		ResultSet result = stm.executeQuery();
    		//Preencher os dados da lista clientes
    		while (result.next()) {
    			String idclientes = result.getString(1);
    			String nome = result.getString(2);
    			String sobrenome = result.getString(3);
    			String dataNascimento = result.getString(4);
    			String cpf = result.getString(5);
    			String nacionalidade = result.getString(6);
    			String celular = result.getString(7);
    			String sexo = result.getString(8);
    			String email = result.getString(9);
    			
    			clientes.add(new Clientes(idclientes,nome,sobrenome,dataNascimento,cpf,nacionalidade,celular,sexo,email));
    		}
    		//Fechar a conexão com o BD
    		con.close();
    		return clientes;
    	} catch (Exception e) {
    		System.out.println(e);
    		return null;
    	}
    	
    }
    
    public void selecionarCliente(Clientes clientes) {
    	//Criar um objeto para receber o camando em SQL
    	String sql = "select * from cliente where idclientes = ?";
    	
    	try {
    		//Abrir a conexão com o BD
    		Connection con = conectar();
    		//Criar statement
    		PreparedStatement stm = con.prepareStatement(sql);
    		stm.setString(1, clientes.getIdclientes());
    		//Executar o statement
    		ResultSet result = stm.executeQuery();
    		//Preencher os dados do cliente
    		while (result.next()) {
    			clientes.setIdclientes(result.getString(1));
    			clientes.setNome(result.getString(2));
    			clientes.setSobrenome(result.getString(3));
    			clientes.setDataNascimento(result.getString(4));
    			clientes.setCpf(result.getString(5));
    			clientes.setNacionalidade(result.getString(6));
    			clientes.setCelular(result.getString(7));
    			clientes.setSexo(result.getString(8));
    			clientes.setEmail(result.getString(9));
    		}
    		con.close();
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    }

    public void alterarCliente(Clientes clientes) {
    	//Criar um objeto para receber o camando em SQL
    	String sql = "update cliente set nome=?,sobrenome=?,dataNascimento=?,cpf=?,nacionalidade=?,celular=?,sexo=?,email=? where idclientes=?";
    	
    	try {
    		//Abrir a conexão com o BD
    		Connection con = conectar();
    		//Criar statement
    		PreparedStatement stm = con.prepareStatement(sql);
    		stm.setString(1, clientes.getNome());
    		stm.setString(2, clientes.getSobrenome());
    		stm.setString(3, clientes.getDataNascimento());
    		stm.setString(4, clientes.getCpf());
    		stm.setString(5, clientes.getNacionalidade());
    		stm.setString(6, clientes.getCelular());
    		stm.setString(7, clientes.getSexo());
    		stm.setString(8, clientes.getEmail());
    		stm.setString(9, clientes.getIdclientes()); 		
    		//Executar o statement
    		stm.executeUpdate();
    		//Fechar a conexão
    		con.close();
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    }
    
	public void deletarCliente(Clientes clientes) {
		// Criar o objeto que vai receber o comando em SQL
		String sql = "delete from cliente where idclientes=?";		
		try {
			// Abrir uma conexão com o BD
			Connection con = conectar();
			//Criar o statement 
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, clientes.getIdclientes());
			//Executar o statement
			stm.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
