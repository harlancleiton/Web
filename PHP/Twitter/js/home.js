$(document).ready(function(){
	$('#btnTweet').click(function(){
		if($('#txtTweet').val().length>0){
			novoTweet();
		}
	});
	$('#txtTweet').keypress(function(e){
		if(e.which==13){
			novoTweet();
		}
	});
	atualizarTweets();
	function atualizarTweets(){
		$.ajax({
			url:'getTweets.php',
			success:function(data){
				$('#divTweets').html(data);
			}
		});
	}
	function novoTweet(){
		$.ajax({
				url:'novoTweet.php',
				method:'post',
				/*
				data:{
					txtTweet:$('#txtTweet').val()
				},
				*/
				data:$('#formTweet').serialize(),
				success:function(data){
					$('#txtTweet').val('');
					atualizarTweets();
				}
			});
	}

});