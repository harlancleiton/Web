<?php
	require_once('conexaoBD.php');

	session_start();
	$id_usuario=$_SESSION['id_usuario'];

	$conexao=new BD();
	$link=$conexao->conectaBD();

	$sql="select t.tweet, DATE_FORMAT(t.data_criacao,'%d %b %Y %T') as data_criacao, u.usuario from tweet as t ";
	$sql.="join usuarios as u on (t.id_usuario=u.id) ";
	$sql.="where id_usuario='$id_usuario' order by data_criacao desc";
	
	$resultadoId=mysqli_query($link,$sql);

	if($resultadoId){
		while($tweets=mysqli_fetch_array($resultadoId, MYSQLI_ASSOC)){
			$usuario='@'.$tweets['usuario'];
			$data_criacao=$tweets['data_criacao'];
			$txtTweet=$tweets['tweet'];
			echo '<a href="#" class="list-group-item">';
				echo '<h4 class="list-group-item-heading">'.$usuario.' <small> - '.$data_criacao.'</small></h4>';	
				echo '<p class="list-group-item-text">'.$txtTweet.'</p>';
			echo '</a>';
		}
	}
	else
		echo "Erro na consulta de tweets.";

?>