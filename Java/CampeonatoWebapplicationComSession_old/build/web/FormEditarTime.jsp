<%@page session="true" errorPage="erro.jsp" %>
<%@page import="modelo.Time" %>

<jsp:useBean id="timeBean" scope="request" class="bean.TimeBean" />
<jsp:setProperty name="timeBean" property="*" />

<%
  timeBean.execute();
%>
<script language="JavaScript">

function setSelectedIndex() {
  for ( var i = 0; i < document.getElementById('estado').options.length; i++ ) {
        if ( document.getElementById('estado').options[i].value == '<%=timeBean.getEstado()%>' ) {
            document.getElementById('estado').options[i].selected = true;
            return;
        }
    }
}

</script>



<html>

<head>
  <title>CI - Comunicado Interno</title>
  <link rel="stylesheet" href="estilo/estilo.css">
</head>

<body class='body' topmargin='0' leftmargin='3' onload="javaScript:setSelectedIndex();">


<form method ='POST' action='FormConsultarTime.jsp'>


<table border="0" width="100%">
<tr>
  <td width="100%" class="cabecalho" background="../imagens/bgcolor.gif">
     <img border="0" src="editar.gif" width="15" height="16">
     Alterar dados do time
  </td>
</tr>
</table>

<table border="0" width="100%">

<tr>
  <td colspan="2" >
  <table width="100%" class='tabela_erro'>
    <tr>
      <td width="100%" colspan="2" class='texto_erro'>  <div align="left">-
          Os campos sinalizados com <img src="../imagens/seta_right.gif" width="9" height="12"> &nbsp; s&atilde;o
          obrigat&oacute;rios</div>
      </td>
    </tr>
  </table>
  </td>
  </tr>
  
  <tr>
    <td width="15%" class='label'>codigo</td>
    <td width="85%">
      <input type='text' name="codigo" readonly="true" maxlength="5" size="5" class='caixa_texto' readonly value="<jsp:getProperty name='timeBean' property='codigo'/>">
      <img src="../imagens/seta_right.gif" width="9" height="12">
    </td>
  </tr>
  
  <tr>
    <td width="15%" class='label'>nome</td>
    <td width="85%">
        <input type='text' name="nome" maxlength="60" size="60" class='caixa_texto' value="<jsp:getProperty name='timeBean' property='nome'/>">
      <img src="seta_right.gif" width="9" height="12">
    </td>
  </tr>

 <tr>
  <td class='label' >Estado</td>
  <td>
    <select id="estado" name="estado">
        <option value="ba">ba</option>
        <option value="se">se</option>
        <option value="rj">rj</option>
        <option value="sp">sp</option>
    </select>
  </td>
  </tr>

  
</table>  

<hr class='linha_blue'>

<table border="0" width="100%">
 <tr>
    <td width='100%' align='left'>
       <input type="submit" name="acao" value="Alterar" class='button_image'>
    </td>
 </tr>
</table>

</form>

</body>

</html>

