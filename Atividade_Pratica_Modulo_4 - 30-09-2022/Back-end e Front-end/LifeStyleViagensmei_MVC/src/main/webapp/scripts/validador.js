/**
 * Validação de formulário
 */
 
 function validar() {
	let nome = frmCliente.nome.value
	let sobrenome = frmCliente.nome.value
	let dataNascimento = frmCliente.nome.value
	let cpf = frmCliente.nome.value
	let nacionalidade = frmCliente.nome.value
	let celular = frmCliente.nome.value
	let sexo = frmCliente.nome.value
	let email = frmCliente.nome.value
	if (nome ===""){
		alert('Preencha o campo Nome')
		frmCliente.nome.focus()
		return false
	}else if(sobrenome ===""){
		alert('Preencha o campo Sobrenome')
		frmCliente.sobrenome.focus()
		return false
	}else if(dataNascimento ===""){
		alert('Preencha o campo Data de Nascimento')
		frmCliente.dataNascimento.focus()
		return false
    }else if(cpf ===""){
		alert('Preencha o campo CPF')
		frmCliente.cpf.focus()
		return false
	}else if( nacionalidade ===""){
		alert('Preencha o campo Nacionalidade')
		frmCliente.nacionalidade.focus()
		return false
	}else if(celular ===""){
		alert('Preencha o campo Celular')
		frmCliente.celular.focus()
		return false
	}else if(sexo ===""){
		alert('Preencha o campo Sexo')
		frmCliente.sexo.focus()
		return false
	}else if(email ===""){
		alert('Preencha o campo E-mail')
		frmCliente.email.focus()
		return false
	}else {
		document.forms["frmCliente"].submit()}
	}