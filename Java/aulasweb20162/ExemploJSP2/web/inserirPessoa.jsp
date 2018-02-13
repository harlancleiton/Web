<%-- 
    Document   : inserirPessoa
    Created on : 09/02/2010, 07:23:38
    Author     : Helder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "model.Pessoa" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
    <%
    try{
        String codigo = request.getParameter("codigo");
        String nome = request.getParameter("nome");
        Pessoa pes = new Pessoa(Integer.valueOf(codigo),nome);
    %>
        o codigo foi: <h1><%=codigo%></h1><br>
        o nome foi: <%=nome%>
        <%
        System.out.println("nome da pesssoa"+pes.getNome());
    }
    catch (Exception e){
        System.out.println("errro"+e.getMessage());
    }


%>
</html>
