<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexao.jsp"%>"
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Material JSP</title>
    </head>
    <body bgcolor="#778899" >
<table border=0 align=center bgcolor=White width="700">
<tr>
<td valign=top width="100%" align=center>
<%@include file="menu.html"%>
</td></tr>
<td valign=top>
<form name="buscar" action="buscar.jsp" method=post>
    <table width="100%" border="0" align="center">
        <tr>
            <td bgcolor=white> <table width="100%" border="0" align="center">
        <tr>
            <td align=right colspan=2>.: <b>Pesquisar</b> :.</td>
        </tr>
        <tr>
        <td align=right width="30%"><b>Descrição</b>:</td>
        <td><input name="descricao" type=text id="descricao" value="" size=30 maxlength="50"></td>
        </tr>
        <tr>
        <td><input type=submit name=submit value="Pesquisar">
        <input type=reset name=reset value="Limpar"></td>
        </tr>
        </table></td>
    </tr>
    </table>
</form>
</td>
</table>
</body>
</html>