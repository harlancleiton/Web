<?php
	class Pessoa{
		var $nome;
		//$idade;
		//$sexo;

		function setNome($nome){
			$this->nome=$nome;
		}

		function getNome(){
			return $this->nome;
		}
	}

	$pessoa=new Pessoa();
	$pessoa->setNome('Harlan');
	echo $pessoa->getNome();

?>