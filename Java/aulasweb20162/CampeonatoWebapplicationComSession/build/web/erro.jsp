<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page session="true" isErrorPage="true" %>

<html>

<head>
    <title>CI - Comunicado Interno</title>
    <link rel="stylesheet" href="../estilo/estilo.css">
    <script src='../script/funcoes.js'></script>
</head>

<body class='body' topmargin='0' leftmargin='3'>



<center>


  <table border="0" width="100%">
  
    <tr>
      <td width="15%" class='cabecalho_erro' colspan="2" background="../imagens/bgcolor.gif">
        <img src='../imagens/x.GIF'> &nbsp; Falha na operação
      </td>
    </tr>
  </table> 
  
  <hr class='linha_blue'> 
  
  <table border="0" width="70%" class='tabela_erro_global'>
  
    <tr>
      <td width="15%" class='texto_erro' colspan="2">
        <b> <img src='../imagens/x.GIF'> &nbsp; - </b> &nbsp;  
        <%= exception.getMessage() %>
        <br>
      </td>
    </tr>
  </table>  

  <hr class='linha_blue'> 
 
  <table border="0" width="70%" align='right'>
  	<tr>
            <td align='right' class='button_pesquisar'>
              <a href='javaScript:history.back(0);' class='link_menu'> <img src='../imagens/voltar.gif' border='0'> [Voltar] </a>
            </td>
  	</tr>
  </table>

</center>

</body>

</html>

