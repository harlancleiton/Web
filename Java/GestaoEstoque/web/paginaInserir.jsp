<%@page import="java.lang.*,java.io.*,java.util.*,java.sql.*"%>
<%@include file="conexao.jsp"%>

<html>
<head>
<title>:: Inserir Material JSP ::</title>
<link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body bgcolor="#778899" >
    <table cellspacing=2 cellpadding=0 border=0 align=center bgcolor=White width="700">
        <tr>
            <td valign=top width="100%" align=center>
                <%@include file="menu.html"%>
        </td></tr>

        <td valign=top>
        <form name="form1" action="inserir.jsp" method=post>
        <table width="100%" border="0" cellspacing="0" cellpadding="2" align="center">
            <tr>
                <td bgcolor=white> <table width="100%" border="0" cellspacing="1" cellpadding="1" align="center">
            <tr>
                 <td align=right class="title" colspan=2>.: <b>Tela Inserir</b> :.</td>
            </tr>
            <tr>
                <td align=right class="right" width="30%"><b>Codigo</b>:</td>
                <td class="default1"><input name="CODIGO" type=text class="textbox" id="CODIGO" value="" size=30 maxlength="50"></td>
            </tr>
            <tr>
                <td align=right class="right" width="30%"><b>Descrição</b>:</td>
                <td class="default1"><input name="DESCRICAO" type=text class="textbox" id="DESCRICAO" value="" size=30 maxlength="50">
            </td>
            <tr>
                <td align=right class="right" width="30%"><b>Preço</b>:</td>
                <td class="default1"><input name="PRECO" type=text class="textbox" id="PRECO" value="" size=30 maxlength="50"></td>
            </tr>
            <tr>
                <td class="right"><b>Observacoes</b>: </td>
                <td class="default1"><textarea name="OBSERVACAO" cols="22" rows="5" class="textbox" id="OBSERVACAO"></textarea></td>
            </tr>
        <tr>
            <td class="right"></td>
            <td class="default1">
                <input type=submit name=submit value="Adicionar" class="button">
                <input type=reset name=submit2 value="Limpar Campos" class="button"></td>
            </tr>
        </table></td>
    </form>

</table>
</table>
</body>
</html>