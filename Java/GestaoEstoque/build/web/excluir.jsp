<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!
public boolean excluir( String descricao ) {
    String sql;
    boolean valor = false;
    Statement stmt;
    try {
        sql = "DELETE FROM MATERIAL WHERE DESCRICAO = '"+descricao+"'";
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
    String descricao=request.getParameter("descricao");

    if(excluir(descricao)){
        response.sendRedirect("paginaListar.jsp");
    }
%>
