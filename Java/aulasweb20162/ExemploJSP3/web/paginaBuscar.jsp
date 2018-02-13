<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>

<html>
<head>
<title>:: Agenda JSP ::</title>

</head>
<body bgcolor="#778899" >
<table border=0 align=center bgcolor=White width="700">
<tr>
<td valign=top width="100%" align=center>

<%@ include file="menu.html" %>

</td></tr>
<td valign=top>
<form name="form1" action="buscar.jsp" method=post>
    <table width="100%" border="0" align="center">
        <tr>
            <td bgcolor=white> <table width="100%" border="0" align="center">
        <tr>
            <td align=right colspan=2>.: <b>Pesquisar</b> :.</td>
        </tr>
        <tr>
        <td align=right width="30%"><b>Nome</b>:</td>
        <td><input name="nome" type=text id="nome" value="" size=30 maxlength="50"></td>
        </tr>
        <tr>
        <td><input type=submit name=submit value="Pesquisar">
        <input type=reset name=submit2 value="Limpar"></td>
        </tr>
        </table></td>
    </tr>
    </table>
</form>
</td>
</table>
</body>
</html>
