<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!
public ArrayList listar() {

    String valor = "";
    String sql = "";
    String nome = "";
    String endereco = "";
    String ddd = "";
    String fone = "";
    String email = "";
    String observacoes = "";
    Statement stmt;
    ResultSet rs;
    ArrayList arraylist = new ArrayList();
    try {
        sql = "SELECT  NOME, ENDERECO, DDD, FONE, EMAIL, OBSERVACOES FROM Agenda";
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
            System.out.println("aquiiiiiiii"+nome);
            arraylist.add(nome);

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
            <td width="210" class="headers"><b>Nome</b></td>
            <td width="60" class="headers"><b>Editar</b></td>
            <td width="60" class="headers"><b>Excluir</b></td>
        </tr>

        <%
            ArrayList array2 = listar();
            for (int i=0; i<array2.size(); i++){
                String nome = (String)array2.get(i);
        %>
        <tr>
          <td width="10%"><a href="#" onClick="window.open('paginaDetalhes.jsp?nome=<%=nome%>','Detalhes',width=350,height=200)"><%=nome%></a></td>
          <td width="10%"><a href="paginaEditar.jsp?nome=<%=nome%>">Editar</a></td>
          <td width="10%"><a href="excluir.jsp?nome=<%=nome%>">Excluir</a></td>
        </tr>
        <%}%>
    </table>

    </td>
  </table>
</body>
</html>
