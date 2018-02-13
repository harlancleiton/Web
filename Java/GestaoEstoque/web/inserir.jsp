<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ include file="conexao.jsp" %>
<%!

public boolean inserir( int codigo, String descricao, float preco, String obs) {
    String sql = "";
    boolean valor = false;

    Statement stmt;
    try {
        sql = "INSERT INTO MATERIAL( CODIGO,DESCRICAO, PRECO, OBSERVACAO) " +
        "VALUES( " + codigo + ", '" + descricao + "', " + preco + ", '" + obs + "' )";
        stmt = con.createStatement ();
        int linhas = stmt.executeUpdate(sql);

        if (linhas > 0) {
            valor = true;
        } else {
            valor = false;
    }

    } catch(SQLException e) {
        System.out.println(e.getMessage());
        e.printStackTrace();
    }
    return valor;
}
%>
<%
    int codigo = Integer.parseInt(request.getParameter("CODIGO"));
    String descricao = request.getParameter("DESCRICAO");
    float preco = Float.parseFloat(request.getParameter("PRECO"));
    String obs = request.getParameter("OBSERVACAO");



    if ( inserir( codigo,descricao,preco,obs ) ) {
        response.sendRedirect("index.jsp");
      } else {
        System.out.println("errooo");
        response.sendRedirect("index.jsp");
}

%>