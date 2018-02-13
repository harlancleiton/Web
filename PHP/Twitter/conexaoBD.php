<?php
	class BD{
		private $host='localhost';
		private $usuario='root';
		private $senha='helloworld';
		private $database='twitter';

		public function conectaBD(){
			//Conecta com o banco de dados
			$conexao=mysqli_connect($this->host,$this->usuario,$this->senha,$this->database);
			//Ajusta o charset de comunicação entre a aplicação e o BD
			mysqli_set_charset($conexao,'utf8');
			//Verifica se houve algum erro na conexão
			if(mysqli_connect_errno()){
				echo 'Erro ao se conectar com o banco de dados: '.mysqli_connect_error();
			}
			return $conexao;
		}
	}

?>