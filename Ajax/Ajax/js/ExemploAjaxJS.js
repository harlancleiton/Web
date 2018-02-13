var httpRequest;

function fazerRequisicao(url, destino){
	document.getElementById(destino).innerHTML='<img src="img/loading.gif" class="img-responsive center-block">';

	if(window.XMLHttpRequest){
		httpRequest=new XMLHttpRequest();
	}
	else if(window.ActiveXObject){
		try{
			httpRequest=new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e){
			try{
				httpRequest=new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e){
				alert('Impossível instanciar o objeto XMLHttpRequest para este navegador/versão');
			}
		}
	}

	if(!httpRequest){
		alert('Erro ao tentar criar uma instância do objeto XMLHttpRequest');
		return false;
	}
	
	/*
		Verifica o estado da requisição em todas as etapas.
		Tem que ser declarado antes dos métodos open e send.
	*/
	httpRequest.onreadystatechange=checarRequisicao;

	httpRequest.open('GET',url);
	httpRequest.send();
}

function checarRequisicao(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			document.getElementById('divConteudo').innerHTML=httpRequest.responseText;
		}
	}
}