<%@     page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!

public String selecionar_registro( String descricao ) {
    String valor = "";
    String sql = "";

    Statement stmt;
    ResultSet rs;


   try     {
        sql = "SELECT CODIGO, DESCRICAO, PRECO, OBSERVACAO FROM MATERIAL WHERE DESCRICAO = '" +descricao+"'";
    stmt = con.createStatement();
    stmt.execute(sql);
    rs = stmt.getResultSet();
    while(rs.next()) {
        codigo = rs.getString(1);
        descricao = rs.getString(2) ;
        preco = rs.getString(3);
        observacao = rs.getString(4);
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

    String codigo;
    String descricao;
    String preco;
    String observacao;

%>

<%

String descricao = request.getParameter("descricao");
selecionar_registro(descricao);
%>

<html>
<head>
<title>:: Material JSP ::</title>
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
<td align=right class="title" colspan=2>.: <b>Editar Produto</b> :.</td>
</tr>
<tr>
<td align=right class="right" width="30%"><b>Descricao</b>:</td>
<td class="default1"><input name="descricao" type=text class="textbox" id="descricao" value="<%=descricao%>" size=30 maxlength="50">
</td>
</tr>
<tr>
<td align=right class="right" width="30%"><b>Preço</b>:</td>
<td class="default1"><input name="preco" type=text class="textbox" id="preco" value="<%=preco%>" size=30 maxlength="100">
</td>
</tr>
<tr>
<td class="right"><b>Observacoes</b>: </td>
<td class="default1"><textarea name="observacao" cols="22" rows="5" class="textbox" id="observacao"><%=observacao%></textarea>
</td>
</tr>
<tr>
<td class="right"></td>
<td class="default1">
<input type="hidden" name="descricao" value="<%=descricao%>">
<input type=submit name=submit value="Salvar" class="button">
<input type="button" name=submit2 value="Cancelar" OnClick="javaScript:window.close(this);">
</td>
</tr>
</table></td>
</tr>
<table>
</form></td>
</tr>
</table>
</body>
</html>