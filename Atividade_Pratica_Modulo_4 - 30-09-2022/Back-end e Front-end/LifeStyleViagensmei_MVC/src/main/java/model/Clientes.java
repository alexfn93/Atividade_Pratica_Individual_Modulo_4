package model;

public class Clientes {
	private String idclientes;
	private String nome;
	private String sobrenome;
	private String dataNascimento;
	private String cpf;
	private String nacionalidade;
	private String celular;
	private String sexo;
	private String email;
	
	
	public Clientes() {
		super();

	}
	
	public Clientes(String idclientes, String nome, String sobrenome, String dataNascimento, String cpf,
			String nacionalidade, String celular, String sexo, String email) {
		super();
		this.idclientes = idclientes;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.dataNascimento = dataNascimento;
		this.cpf = cpf;
		this.nacionalidade = nacionalidade;
		this.celular = celular;
		this.sexo = sexo;
		this.email = email;
	}

	public String getIdclientes() {
		return idclientes;
	}
	public void setIdclientes(String idclientes) {
		this.idclientes = idclientes;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNacionalidade() {
		return nacionalidade;
	}
	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
