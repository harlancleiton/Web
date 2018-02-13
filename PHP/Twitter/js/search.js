$(document).ready(function(){
	// Evento de clique sobre o botao de pesquisa
	$('#btnSearch').click(function(){
		if($('#txtSearch').val().length>0){
			getSearch();
		}
	});
	// Evento da tecla enter sobre o a caixa de texto de pesquisa
	$('#txtSearch').keypress(function(e){
		if(e.which==13){
			getSearch();
		}
	});

	/* Função responsável por chamar o script
	que irá fazer a consulta no banco, e depois
	exibir numa div na página search.php */
	function getSearch(){
		$.ajax({
				url:'getSearch.php',
				method:'post',
				/*
				data:{
					txtSearch:$('#txtSearch').val()
				},
				*/
				data:$('#formSearch').serialize(),
				success:function(data){
					//$('#txtSearch').val('');
					$('#divSearch').html(data);

					$('.btnSeguir').click(function(){
						var idUsuario=$(this).data('id-usuario');
						idBtn='btnSeguir'+'-'+$(this).data('id-usuario');
						$.ajax({
							url: 'seguindo.php',
							method: 'post',
							data:{idUsuario:idUsuario},
							success: function(data){
								$('#idBtn').attr("class","btn btn-success btnSeguir");
								alert(idBtn);
								//$('#btnSeguir'+idUsuario).attr("class",class="btn btn-success btnSeguir");
								//alert(idUsuario+'.');
							}
						});
					});
				}
			});
	}
});