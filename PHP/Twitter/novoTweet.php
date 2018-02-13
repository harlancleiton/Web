<?php
	require_once('conexaoBD.php');

	session_start();

	$txtTweet=$_POST['txtTweet'];
	$id_usuario=$_SESSION['id_usuario'];

	$conexao=new BD();
	$link=$conexao->conectaBD();

	$sql="insert into tweet(id_usuario,tweet)values($id_usuario,'$txtTweet')";
	mysqli_query($link,$sql);

	echo $id_usuario.", ".$txtTweet;
?>