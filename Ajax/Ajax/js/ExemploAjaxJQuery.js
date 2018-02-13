$(document).ready(function(){
	$('.btn-conteudo').click(function(){
		//var carregaUrl='../'+this.id+'.html';
		var carregaUrl=this.id+'.html';
		alert(carregaUrl);

		$.ajax({
			type:'GET',
			url: carregaUrl,
			sucess: function(data){
				$('#divConteudo').html(data);
			},
			beforeSend: function(){
				$('#loader').css({display:"block"});
			},
			complete: function(){
				$('#loader').css({display:"none"});
			}
		});
	});
});