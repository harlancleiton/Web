<?php
	/*Visibilidade:
		public - Pode ser acessado por todos
		private - Pode ser acessado apenas pela própria classe
		protected - Pode ser acessado apenas pela própria classe ou por classes herdeiras
	*/

	class Veiculo{
		public $placa;
		private $cor;
		protected $ano=2017;

		public function setCor($cor){
			$this->cor=$cor;
		}
		public function getCor(){
			return $this->cor;
		}
	}

	class Gol extends Veiculo{
		//$ano=2017;
		public function exibirAno(){
			return $this->ano;
		}
	}

	$veiculo=new Veiculo();
	$veiculo->placa='ABC-1234';
	echo 'Placa: '.$veiculo->placa.'<br/>';

	$veiculo->setCor('Preto');
	echo 'Cor do carro: '.$veiculo->getCor().'<br/>';

	$gol=new Gol();
	echo 'Ano: '.$gol->exibirAno();
?>