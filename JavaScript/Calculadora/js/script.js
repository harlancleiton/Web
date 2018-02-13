function calcular(){
	var num1;
	var num2;
	var op;
	var resultado;

	num1=parseFloat(document.getElementById("num1").value);
	num2=parseFloat(document.getElementById("num2").value);
	op=parseInt(document.getElementById("op").value);

	if(op==1){
		resultado=num1+num2;
	}
	else if(op==2){
		resultado=num1-num2;
	}
	else if(op==3){
		resultado=num1*num2;
	}
	else{
		resultado=num1/num2;
	}

	document.getElementById('resultado').value=resultado;
}