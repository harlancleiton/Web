<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!


public boolean editar( String nome, String endereco, String ddd, String fone, String email, String observacoes) {
    String sql = "";
    boolean valor = false;

    Statement stmt;

    try {
        sql = "UPDATE Agenda SET ENDERECO = '" + endereco + "', DDD = '" + ddd + "', FONE = '" + fone + "', EMAIL = '" + email + "', " +
        " OBSERVACOES = '" + observacoes + "' WHERE nome = '" + nome+"'";
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

    String nome = request.getParameter("nome");
    String endereco = request.getParameter("ENDERECO");
    String ddd = request.getParameter("DDD");
    String fone = request.getParameter("FONE");
    String email = request.getParameter("EMAIL");
    String observacoes = request.getParameter("OBSERVACOES");


    if ( editar( nome, endereco, ddd, fone, email, observacoes) ) {
        response.sendRedirect("paginaListar.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }

%>
