<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!
public String detalhes(String descricao){
    String valor = "";
    String sql = "";

    Statement stmt;
    ResultSet rs;

    //Select
    try {
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
    String codigo = "";
    String descricao = "";
    String preco = "";
    String observacao = "";
%>

<%
String descricao = request.getParameter("descricao");

detalhes(descricao);
%>

<html>
<head>
<title>:: Material JSP ::</title>

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
<td align=right width="30%"><b>Codigo</b>: </td>
<td>

<%=codigo%>

</td>
</tr>
<tr> </tr>
<td align=right width="30%"><b>Descrição</b>:</td>
<td>

<%=descricao%>

</td>
</tr>
<tr>
<td><b>Preço</b>: </td>
<td>

<%=preco%>

</td>
</tr>
<tr>
<td><b>Observação</b>: </td>
<td>

<%=observacao%>

</td>
</tr>
<tr>
<td><a href="#" onClick="self.close()" >Fechar</a></td>
</tr>
</table></td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>