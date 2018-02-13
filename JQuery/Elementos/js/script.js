function exibeElementoPorTag(tag){
	$(tag).show();
}
function ocultaElementoPorTag(tag){
	$(tag).hide();
}
function exibeElementoPorClasse(classe){
	$('.'+classe).show();
}
function ocultaElementoPorClasse(classe){
	$('.'+classe).hide();
}
function exibeElementoPorId(id){
	$('#'+id).show();
}
function ocultaElementoPorId(id){
	$('#'+id).hide();
}