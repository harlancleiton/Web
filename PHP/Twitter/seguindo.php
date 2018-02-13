<?php
	require_once('conexaoBD.php');

	session_start();

	$idSeguido=$_POST['idUsuario'];
	$idSeguidor=$_SESSION['id_usuario'];

	$conexao=new BD();
	$link=$conexao->conectaBD();

	$sql="insert into seguidores(id_seguidor,id_seguido)values($idSeguidor,$idSeguido)";
	mysqli_query($link,$sql);

	//echo $sql;
?>