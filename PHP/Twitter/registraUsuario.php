<?php
	require_once('conexaoBD.php');

	$usuario=$_POST['usuario'];
	$email=$_POST['email'];
	$senha=$_POST['senha'];

	$usuarioExiste=false;
	$emailExiste=false;

	$conexao=new BD();
	$link=$conexao->conectaBD();

	//Verifica se o usuário/email já existe
	$sql="select usuario,email from usuarios where usuario='$usuario' or email='$email'";
	if($resultado=mysqli_query($link,$sql)){
		$dadosUsuario=mysqli_fetch_array($resultado);
		if($usuario==$dadosUsuario['usuario'])
			$usuarioExiste=true;
		if($email==$dadosUsuario['email'])
			$emailExiste=true;
	}
	else{
		echo "Erro ao tentar localizar o usuário registrado.";
	}
	/*
		Se existi, voltar a página de inscrição
		apresentando o erro
	*/
	if($usuarioExiste || $emailExiste){
		$erroInscrevase='';
		if($usuarioExiste)
			$erroInscrevase.="usuarioExiste=1&";
		if($emailExiste)
			$erroInscrevase.="emailExiste=1&";

		header('Location: inscrevase.php?'.$erroInscrevase);
	}
	else{
		$sql="insert into usuarios (usuario, email, senha) values ('$usuario','$email',md5($senha))";
		mysqli_query($link,$sql);
		echo 'Usuario registrado';
	}
?>