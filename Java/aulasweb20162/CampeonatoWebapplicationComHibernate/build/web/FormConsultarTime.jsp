<%@page session="true" errorPage="erro.jsp" %>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Time"%>

<jsp:useBean id="timeBean" scope="request" class="bean.TimeBean" />
<jsp:setProperty name="timeBean" property="*" />

<%
    Iterator times = timeBean.execute();
%>

<script language="Javascript">
function confirmacao(id) {
     var resposta = confirm("Deseja remover esse registro?");

     if (resposta == true) {
         
          window.location.href = "FormConsultarTime.jsp?codigo="+id+"&acao";
     }
}
</script>


<html>

<head>
    <title>Consultar Times</title>
    <link rel="stylesheet" href="estilo.css">
   
</head>

<body  class='body' topmargin='0' leftmargin='3'>

<form action="FormConsultarTime.jsp" method="post">


<table border="0" width="100%" cellpadding="2" cellspacing='2' >
    <tr>
      <td width="100%" class="cabecalho" colspan="4" background="../imagens/bgcolor.gif">
        <img src='../imagens/palette_zoom.gif'> Consultar time
      </td>
    </tr>
</table>

<br>

<fieldset class='fieldset'>

Digite o codigo (0 para ver todos):

<font class='label_pesquisa'>
    <input name='codigo' size='40' class='caixa_texto' maxlength='40' value="<jsp:getProperty name='timeBean' property='codigo'/>"></input>
    &nbsp; &nbsp;
    <input class='button_image' type='submit' name='acao' value='Pesquisar'></input>
</font>

</fieldset>

<br>

<table border="0" width="100%" cellpadding="0">
    <tr>
      <td width="70%" class="cabecalho_pesquisa_detalhe">nome</td>
      <td width="15%" class="cabecalho_pesquisa_detalhe">estado</td>
      <td width="5%" class="cabecalho_pesquisa_detalhe">Editar</td>
      <td width="10%" class="cabecalho_pesquisa_detalhe">Excluir</td>
    </tr>
</table>

<table border="0" width="100%" cellpadding="0" id="TODOS" style="z-index; visibility:visible; top:158">	

<%
  if(times != null)
  {

    Time time;

    while(times.hasNext())
    {
	time = (Time)times.next();
%>
    <tr class="linha_pesquisa"  onmouseover="javascript:mouseOverTable(this)" onmouseout="javaScript:mouseOutTable(this)">
      <td width="70%" class="coluna_pesquisa"><%=time.getNome()%></td>
      <td width="15%" class="coluna_pesquisa"><%=time.getEstado()%></td>
      <td width="5%" class="coluna_pesquisa"><a href="FormEditarTime.jsp?codigo=<%=time.getCodigo()%>&acao=Editar"><img src='editar.gif' border='0'></a></td>
    
      <td width="10%" class="coluna_pesquisa"><a href="javascript:confirmacao(<%=time.getCodigo()%>)" >  <b><font color='red'>x</font></b></a></td>-->
      <!--<td width="10%" class="coluna_pesquisa"><a href="FormConsultarTime.jsp?codigo=<%=time.getCodigo()%>&acao=Excluir">  <b><font color='red'>x</font></b></a></td>-->
    </tr>	  
<%
    }
  }
%>

</table>

<br><br>

</form>

</body>

</html>

