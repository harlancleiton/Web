<%@page session="true" errorPage="erro.jsp" %>

<jsp:useBean id="timeBean" scope="request" class="bean.TimeBean" />
<jsp:setProperty name="timeBean" property="*" />

<%
  timeBean.execute();
%>

<html>

<head>
  <title>Adicionar Times</title>
  <link rel="stylesheet" href="estilo.css">
  <script language='javaScript'>
      function limparDados()
      {
        <%
        if(timeBean.getAcao()!= null && !timeBean.getAcao().equals(""))
        {
            timeBean.limparDados();
        }
        %>
      }
  </script>
</head>

<body class='body' topmargin='0' class="cabecalho" leftmargin='3' onload="javaScript:limparDados();">


<form method ='POST' action='FormCadastrarTime.jsp'>


<table border="0" width="100%">
<tr>
  <td width="100%" class="cabecalho">
      Adicionar Time
  </td>
</tr>
</table>

<table border="0" width="100%">


    <tr>
      <td width="100%" colspan="2" class='texto_erro'>  <div align="left">-
          Os campos sinalizados com <img src="seta_right.gif" width="9" height="12"> sao obrigatorios!</div>
      </td>
    </tr>
  
 <table border="0" width="100%">
  <tr>
    <td class='label' align='left'>Codigo</td>
    <td>
      <input type='text' align='left' name="codigo" maxlength="5" size="5" class='caixa_texto' value="<jsp:getProperty name='timeBean' property='codigo'/>">
      <img src="seta_right.gif" width="9" height="12">
    </td>
  </tr>
 
  <tr>
    <td class='label' align='left'>Nome</td>
    <td>
        <input type='text' align='left' name="nome" maxlength="60" size="80" class='caixa_texto' value="<jsp:getProperty name='timeBean' property='nome'/>">
      <img src="seta_right.gif" width="9" height="12">
    </td>
  </tr>
   <tr>
  <td class='label' >Estado</td>
  <td>
    <select name="estado">
        <option value="ba">ba</option>
        <option value="se">se</option>
        <option value="rj">rj</option>
        <option value="sp">sp</option>
    </select>
  </td>
  </td>
  </tr>
  </table>

 
    
<tr>
    <td width='100%' align='left'>
       <input type="submit" name="acao" value="Adicionar" class='button_image'>
    </td>
 </tr>
  
</table>  



</form>

</body>

</html>

