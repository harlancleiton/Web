<?php
	session_start();

	require_once('conexaoBD.php');

	$usuario=$_POST['usuario'];
	$senha=md5($_POST['senha']);

	$conexao=new BD();
	$link=$conexao->conectaBD();
	$sql="SELECT id, usuario, email FROM usuarios WHERE usuario='$usuario' AND senha='$senha'";
	$result=mysqli_query($link,$sql);
	$dadosResultado=mysqli_fetch_array($result);
	if(isset($dadosResultado['usuario'])){
		$_SESSION['id_usuario']=$dadosResultado['id'];
		$_SESSION['usuario']=$dadosResultado['usuario'];
		$_SESSION['email']=$dadosResultado['email'];
		header('Location: home.php');
	}
	else
		header('Location: index.php?erro=1');
?>