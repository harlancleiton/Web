<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!

public String buscar(String descricao) {
    String sql="";
    String codigo="";
    String preco="";
    String observacao="";
    
    String valor="";

    Statement stmt;
    ResultSet rs;

    //Select
    try {
        sql = "SELECT CODIGO, DESCRICAO, PRECO, OBSERVACAO FROM MATERIAL " +
        " WHERE (DESCRICAO LIKE '%" + descricao + "%')";
        stmt = con.createStatement();
        stmt.execute(sql);
        rs = stmt.getResultSet();
        while(rs.next()) {
                codigo = rs.getString(1);
                descricao = rs.getString(2) ;
                preco = rs.getString(3);
                observacao = rs.getString(4);
                valor += "<tr>" +
                "<td class=\"default\"><a href=\"#\" onClick=\"window.open('paginaDetalhes.jsp?descricao=" + descricao + "','Detalhes','width=350,height=200')\">"+descricao+"</a></td>" +
                "<td class=\"default\"><a href=\"#\" onClick=\"window.open('paginaDetalhes.jsp?descricao=" + descricao + "','Detalhes','width=350,height=200')\">"+preco+"</a></td>" +
                "<td class=\"default\"><a href=\"#\" onClick=\"window.open('paginaDetalhes.jsp?descricao=" + descricao + "','Detalhes','width=350,height=200')\">"+observacao+ "</a></td>" +
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

    String descricao = request.getParameter("descricao");
    String linhas = buscar(descricao);
%>

<html>
<head>
<title>:: Material JSP ::</title>

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
<td width="60" class="headers"><b><a href="#">Descricao</a></b></td>
<td width="210" class="headers"><b><a href="#">Preco</a></b></td>
<td width="210" class="headers"><b><a href="#">Observacao</a></b></td>
</tr>

<%=linhas%>

</table>
</td>
</tr>
</table>
</body>
</html>