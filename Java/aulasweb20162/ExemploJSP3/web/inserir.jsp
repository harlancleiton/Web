<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!


public boolean inserir( String nome, String endereco, String ddd, String fone, String email, String observacoes ) {
    String sql = "";
    boolean valor = false;

    Statement stmt;

    try {
        sql = "INSERT INTO Agenda( NOME, ENDERECO, DDD, FONE, EMAIL, OBSERVACOES ) " +
        "VALUES( '" + nome + "', '" + endereco + "', '" + ddd + "', '" + fone + "', '" + email + "', '" + observacoes + "' )";
        stmt = con.createStatement ();
        int linhas = stmt.executeUpdate(sql);

        if (linhas > 0) {
            valor = true;
        } else {
            valor = false;
    }

    } catch(SQLException e) {
        e.printStackTrace();
    }
    return valor;
}
%>
<%
    String nome = request.getParameter("NOME");
    String endereco = request.getParameter("ENDERECO");
    String ddd = request.getParameter("DDD");
    String fone = request.getParameter("FONE");
    String email = request.getParameter("EMAIL");
    String observacoes = request.getParameter("OBSERVACOES");



    if ( inserir( nome, endereco, ddd, fone, email, observacoes ) ) {
        response.sendRedirect("paginaListar.jsp");
      } else {
        System.out.println("erro");
        response.sendRedirect("index.jsp");
}

%>
