<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.*,java.io.*,java.util.*,java.sql.*"%>
<%@include file="conexao.jsp"%>
<%!
public ArrayList listar() {

    String codigo;
    String descricao = "";
    String sql = "";
    String preco = "";
    String  observacao= "";
    Statement stmt;
    ResultSet rs;
    ArrayList arraylist = new ArrayList();
    try {
        sql = "SELECT  CODIGO, DESCRICAO, PRECO, OBSERVACAO FROM MATERIAL";
        stmt = con.createStatement();
        stmt.execute(sql);
        rs = stmt.getResultSet();
        while(rs.next()) {
            codigo = rs.getString(1);
            descricao = rs.getString(2) ;
            preco = rs.getString(3);
            observacao = rs.getString(4);
            System.out.println("aquiiiiiiii"+descricao);
            arraylist.add(descricao);

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
    return arraylist;
}

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
            <td width="210" class="headers"><b>Nome</b></td>
            <td width="60" class="headers"><b>Editar</b></td>
            <td width="60" class="headers"><b>Excluir</b></td>
        </tr>

        <%
            ArrayList array2 = listar();
            for (int i=0; i<array2.size(); i++){
                String descricao = (String)array2.get(i);
        %>
        <tr>
          <td width="10%"><a href="#" onClick="window.open('paginaDetalhes.jsp?descricao=<%=descricao%>','Detalhes',width=350,height=200)"><%=descricao%></a></td>
          <td width="10%"><a href="paginaEditar.jsp?descricao=<%=descricao%>">Editar</a></td>
          <td width="10%"><a href="excluir.jsp?descricao=<%=descricao%>">Excluir</a></td>
        </tr>
        <%}%>
    </table>

    </td>
  </table>
</body>
</html>