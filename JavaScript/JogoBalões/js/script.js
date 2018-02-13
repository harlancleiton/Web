var timerId=null; //Armazena a chamada da função timeout

function iniciarJogo(){
	var nvJogo=document.getElementById('nvJogo').value;
	window.location.href='jogo.html?'+nvJogo;
}
function iniciaJogo(){
	var url=window.location.search;
	var nvJogo=url.replace("?","");

	var tempoRestante;
	if(nvJogo=='1'){
		tempoRestante=120;
	}
	else if(nvJogo=='2'){
		tempoRestante=60;
	}
	else if(nvJogo=='3'){
		tempoRestante=30;
	}
	document.getElementById('tempoRestante').innerHTML=tempoRestante;

	var qtdeBaloes=10;
	document.getElementById('qtdeBaloes').innerHTML=qtdeBaloes;
	document.getElementById('qtdeBaloesEstourados').innerHTML=0;
	criaBaloes(qtdeBaloes);

	contagemTempo(tempoRestante+1);
}
function criaBaloes(qtdeBaloes){
	for(var i=1;i<=qtdeBaloes;i++){
		var balao=document.createElement("img");
		balao.src="imagens/balao_azul_pequeno.png";
		balao.id='balao'+i;
		balao.onclick=function(){
			estourarBalao(this);
		};
		document.getElementById('cenarioJogo').appendChild(balao);
	}
}

function estourarBalao(balao){
	document.getElementById(balao.id).setAttribute("onclick","");
	document.getElementById(balao.id).src="imagens/balao_azul_pequeno_estourado.png";

	contagem();
}

function contagem(){
	var baloesInteiros=parseInt(document.getElementById('qtdeBaloes').innerHTML);
	var baloesEstourados=parseInt(document.getElementById('qtdeBaloesEstourados').innerHTML);

	baloesInteiros--;
	baloesEstourados++;

	document.getElementById('qtdeBaloes').innerHTML=baloesInteiros;
	document.getElementById('qtdeBaloesEstourados').innerHTML=baloesEstourados;

	if(baloesInteiros==0){
		fimDeJogo();
	}
}

function fimDeJogo(){
	alert("Parabéns, você estourou todos os balões");
	clearTimeout(timerId);

}

function contagemTempo(tempoSegundos){
	tempoSegundos--;
	if(tempoSegundos==-1){
		clearTimeout(timerId);
		gameOver();
		return false;
	}
	document.getElementById('tempoRestante').innerHTML=tempoSegundos;
	timerId=setTimeout("contagemTempo("+tempoSegundos+")",1000);
}

function gameOver(){
	var mensagem='Fim de jogo! Você não conseguiu estourar todos os balões';
	alert(mensagem);
}