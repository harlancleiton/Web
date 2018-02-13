<%@     page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!

public String selecionar_registro( String nome ) {
    String valor = "";
    String sql = "";

    Statement stmt;
    ResultSet rs;


   try     {
        sql = "SELECT NOME, ENDERECO, DDD, FONE, EMAIL, OBSERVACOES FROM Agenda WHERE nome = '" + nome+"'";
    stmt = con.createStatement();
    stmt.execute(sql);
    rs = stmt.getResultSet();
    while(rs.next()) {
        nome = rs.getString(1);
        endereco = rs.getString(2) ;
        ddd = rs.getString(3);
        fone = rs.getString(4);
        email = rs.getString(5);
        observacoes = rs.getString(6);
}
    stmt.close();
    if (!con.isClosed()) {
      con.close();
    }
} catch (Exception e) {
try {
    if (!con.isClosed()) {
    }
    } catch (Exception ex){
        System.out.println("erro"+ex.getMessage());
    }
}
return valor;
}

    
    String nome = "";
    String endereco = "";
    String ddd = "";
    String fone = "";
    String email = "";
    String observacoes = "";

%>

<%

String nome = request.getParameter("nome");
selecionar_registro(nome);
%>

<html>
<head>
<title>:: Agenda JSP ::</title>
<link rel="stylesheet" href="estilos.css" type="text/css">
</head>
<body bgcolor="#778899" >
<table cellspacing=2 cellpadding=0 border=0 align=center bgcolor=White width="700">
<tr>
<td valign=top width="100%" align=center>

<%@ include file="menu.html" %>

</td></tr>

<td valign=top>
<form name="form1" action="editar.jsp" method=post>
<table width="100%" border="0" cellspacing="0" cellpadding="2" align="center">
<tr>
<td bgcolor=white> <table width="100%" border="0" cellspacing="1" cellpadding="1" align="center">
<tr>
<td align=right class="title" colspan=2>.: <b>Editar Agenda</b> :.</td>
</tr>
<tr>
<td align=right class="right" width="30%"><b>Nome</b>:</td>
<td class="default1"><input name="NOME" type=text class="textbox" id="NOME" value="<%=nome%>" size=30 maxlength="50" disabled="true"></td>
</tr>
<tr> </tr>
<td align=right class="right" width="30%"><b>Endereco</b>:</td>
<td class="default1"><input name="ENDERECO" type=text class="textbox" id="ENDERECO" value="<%=endereco%>" size=30 maxlength="100"></td>
</tr>
<tr>
<td class="right"><b>Fone</b>: </td>
<td class="default1"><input name="DDD" type=text class="textbox" id="DDD" value="<%=ddd%>" size=3 maxlength="3">
-
<input name="FONE" type=text class="textbox" id="FONE" value="<%=fone%>" size=7 maxlength="10"></td>
</tr>
<tr>
<td class="right"><b>Email</b>: </td>
<td class="default1"><input name="EMAIL" type=text class="textbox" id="EMAIL" value="<%=email%>" size=30 maxlength="50"></td>
</tr>
<tr>
<td class="right"><b>Observacoes</b>: </td>
<td class="default1"><textarea name="OBSERVACOES" cols="22" rows="5" class="textbox" id="OBSERVACOES"><%=observacoes%></textarea></td>
</tr>
<tr>
<td class="right"></td>
<td class="default1">
<input type="hidden" name="nome" value="<%=nome%>">
<input type=submit name=submit value="Salvar" class="button">
<input type="button" name=submit2 value="Cancelar" OnClick="javaScript:window.close(this);">
</td>
</tr>
</table></td>
</tr>
</table>
</form></td>
</tr>
</table>
</body>
</html>
