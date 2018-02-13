<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!
public boolean editar(String descricao,float preco,String observacao) {
    String sql = "";
    boolean valor = false;

    Statement stmt;

    try {
        sql = "UPDATE MATERIAL SET DESCRICAO = '" +descricao + "', PRECO = " + preco + ", OBSERVACAO = '" + observacao + "' WHERE DESCRICAO = '"+descricao+"'";
        stmt = con.createStatement ();
        int linhas = stmt.executeUpdate(sql);

        if (linhas > 0) {
            valor = true;
        }
        else
            valor = false;

    } catch(SQLException e) {
        e.printStackTrace();
    }
    return valor;
}
%>
<%
    //String codigo = request.getParameter("codigo");
    String descricao = request.getParameter("descricao");
    String preco = request.getParameter("preco");
    String observacao = request.getParameter("observacao");

    if (editar(descricao,Float.parseFloat(preco),observacao)){
        response.sendRedirect("paginaListar.jsp");
    }
    else
        response.sendRedirect("index.jsp");
%>