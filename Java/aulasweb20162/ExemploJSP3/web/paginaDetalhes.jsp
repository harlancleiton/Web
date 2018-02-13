<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!


public String detalhes( String nome ) {
    String valor = "";
    String sql = "";

    Statement stmt;
    ResultSet rs;

    //Select
    try {
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
    System.out.println("erro"+e.getMessage());
try {
if (!con.isClosed()) {
}
} catch (Exception ex){
    System.out.println("erro2"+e.getMessage());
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

detalhes(nome);
%>

<html>
<head>
<title>:: Agenda JSP ::</title>

</head>
<body bgcolor="#778899" >
<table border=0 align=center bgcolor=White width="100%">
<td valign=top>
<table width="100%" border="0" align="center">
<tr>
<td bgcolor=white> <table width="100%" border="0" align="center">
<tr>
<td align=right colspan=2>.: <b>Detalhes
</b> :.</td>
</tr>
<tr>
<td align=right width="30%"><b>Nome</b>: </td>
<td>

<%=nome%>

</td>
</tr>
<tr> </tr>
<td align=right width="30%"><b>Endereco</b>:</td>
<td>

<%=endereco%>

</td>
</tr>
<tr>
<td><b>Fone</b>: </td>
<td>

<%=ddd%>

-

<%=fone%>

</td>
</tr>
<tr>
<td><b>Email</b>: </td>
<td>

<%=email%>

</td>
</tr>
<tr>
<td><b>Observacoes</b>: </td>
<td>

<%=observacoes%>

</td>
</tr>
<tr>
<td><a href="#" onClick="self.close()" >fechar</a></td>
</tr>
</table></td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
