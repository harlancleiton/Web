<?php
	require_once('conexaoBD.php');

	session_start();
	$id_usuario=$_SESSION['id_usuario'];
	$txtSearch=$_POST['txtSearch'];

	$conexao=new BD();
	$link=$conexao->conectaBD();

	$sql="select u.id,u.usuario, u.email ";
	$sql.="from usuarios as u ";
	$sql.="where u.usuario like '%$txtSearch%' and u.id not like '$id_usuario'";
	
	$resultadoId=mysqli_query($link,$sql);

	if($resultadoId){
		while($search=mysqli_fetch_array($resultadoId, MYSQLI_ASSOC)){
			$id=$search['id'];
			$usuario='@'.$search['usuario'];
			$email=$search['email'];
			echo '<a href="#" class="list-group-item">';
				echo '<h4 class="list-group-item-heading">'.$usuario.' <small> - '.$email.'</small>
						<p class="list-group-item-text pull-right">
						<button type="buton" id="btnSeguir-'.$id.'" class="btn btn-default btnSeguir" data-id-usuario="'.$id.'">Seguir</button>
						</p>
						<div class="clearfix"></div>
					</h4>';
			echo '</a>';
		}
	}
	else
		echo "Erro na consulta de search.";
?>