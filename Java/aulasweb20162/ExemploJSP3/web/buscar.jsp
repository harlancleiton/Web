<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!


public String busca(String nome) {
    String valor = "";
    String sql = "";
    String id = "";
    String endereco = "";
    String ddd = "";
    String fone = "";
    String email = "";
    String observacoes = "";

    Statement stmt;
    ResultSet rs;

    //Select
    try {
        sql = "SELECT NOME, ENDERECO, DDD, FONE, EMAIL, OBSERVACOES FROM Agenda " +
        " WHERE (NOME LIKE '%" + nome + "%')";
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
                valor += "<tr>" +
                "<td class=\"default\"><a href=\"#\" onClick=\"window.open('paginaDetalhes.jsp?nome=" + nome + "','Detalhes','width=350,height=200')\">" + nome + "</a></td>" +
                "<td class=\"default\"><a href=\"#\" onClick=\"window.open('paginaDetalhes.jsp?nome=" + nome + "','Detalhes','width=350,height=200')\">" + email + "</a></td>" +
                "<td class=\"default\"><a href=\"#\" onClick=\"window.open('paginaDetalhes.jsp?nome=" + nome + "','Detalhes','width=350,height=200')\">(" + ddd + ")" + fone + "</a></td>" +
               "</tr>";

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
    }
}
    return valor;
}
%>
<%

    String nome = request.getParameter("nome");
    String linhas = busca(nome );
%>

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
<table cellspacing=1 cellpadding=1 width="100%" border=0 bgcolor=White>
<tr>
<td width="60" class="headers"><b><a href="#">Nome</a></b></td>
<td width="210" class="headers"><b><a href="#">Email</a></b></td>
<td width="210" class="headers"><b><a href="#">Fone</a></b></td>
</tr>

<%=linhas%>

</table>
</td>
</tr>
</table>
</body>
</html>


