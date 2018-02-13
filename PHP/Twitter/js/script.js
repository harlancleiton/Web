$(document).ready(function(){
	//Verifica se os campos usuário e senha foram preenchidos corretamente
	$('#btn_login').click(function(){
		var campoVazio=false;
		if($('#campo_usuario').val()==''){
			$('#campo_usuario').css({'border-color':'#A94442'});
			campoVazio=true;
		}
		else{
			$('#campo_usuario').css({'border-color':'#CCC'});
		}
		if($('#campo_senha').val()==''){
			$('#campo_senha').css({'border-color':'#A94442'});
			campoVazio=true;
		}
		else{
			$('#campo_senha').css({'border-color':'#CCC'});
		}
		if(campoVazio)
			return false;
	});
});