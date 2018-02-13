<?php
	class Calculadora{

		private $numero1;
		private $numero2;
		private $total;

		public function __construct($numero1,$numero2,$operacao){
		//public function __construct(){
			$this->setNumero1($numero1);
			$this->setNumero2($numero2);
			$this->calcular($operacao);
		}

		function calcular($operacao){
			if($operacao=="soma"){
				$this->soma();
			}
			else if($operacao=="subtracao"){
				$this->subtracao();
			}
			else if($operacao=="multiplicacao"){
				$this->multiplicacao();
			}
			else{
				$this->divisao();
			}
			echo $this->getTotal();
		}

		public function soma(){
			$this->setTotal($this->getNumero1()+$this->getNumero2());
		}
		public function subtracao(){
			$this->setTotal($this->getNumero1()-$this->getNumero2());
		}
		public function multiplicacao(){
			$this->setTotal($this->getNumero1()*$this->getNumero2());
		}
		public function divisao(){
			$this->setTotal($this->getNumero1()/$this->getNumero2());
		}

		//getters e setters
		public function setNumero1($numero1){
			$this->numero1=$numero1;
		}
		public function getNumero1(){
			return $this->numero1;
		}

		public function setNumero2($numero2){
			$this->numero2=$numero2;
		}
		public function getNumero2(){
			return $this->numero2;
		}

		public function setTotal($total){
			$this->total=$total;
		}
		public function getTotal(){
			return $this->total;
		}
	}

?>