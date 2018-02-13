<?php
	class Felino{
		var $manifero=true;

		function correr(){
			echo 'Correr como Felino.';
		}
	}

	class Chita extends Felino{
		//Exemplo polimorfismo
		function correr(){
			echo 'Correr como Chita.';
		}
	}

	class Gato extends Felino{
	}

	$chita=new Chita();

	echo $chita->correr();

?>