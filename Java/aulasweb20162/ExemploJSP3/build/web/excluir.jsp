<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!


public boolean excluir( String nome ) {
    String sql = "";
    boolean valor = false;
    Statement stmt;
    try {
        sql = "DELETE FROM Agenda WHERE nome = '"+ nome+"'";
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


if ( excluir( nome) ) {
   response.sendRedirect("paginaListar.jsp");
}

%>
