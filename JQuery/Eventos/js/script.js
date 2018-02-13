$(document).ready(function(){

	$('#click').click(function(){
		alert('Elemento clicado');
	});

	$('#dblclick').dblclick(function(){
		alert('Elemento clicado 2x');
	});

	$('#mousedown').mousedown(function(){
		alert('Botão do mouse pressionado');
	});

	$('#mouseover').mouseover(function(){
		alert('Elemento sobreposto');
	});

	$('#mouseout').mouseout(function(){
		alert('Elemento perdeu foco');
	});

	$('#keydown').keydown(function(){
		alert('Você pressionou uma tecla')
	});

	$('#keypress').keypress(function(){
		alert('Você inseriu um caractere no campo de texto');
	});

	$("#keyup").keyup(function(){
		alert('Você soltou uma tecla');
	});

	$('#focus').focus(function(){
		alert('Elemento focado');
	});

	$('#blur').blur(function(){
		alert('Elemento perdeu o foco');
	});

	$('#change').change(function(){
		alert('Elemento foi modificado');
	});
});