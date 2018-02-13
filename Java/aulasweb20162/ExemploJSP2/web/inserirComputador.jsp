<%-- 
    Document   : inserirPessoa
    Created on : 09/02/2010, 07:23:38
    Author     : Helder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "model.Computador" %>
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
        String marca = request.getParameter("marca");
        String modelo = request.getParameter("modelo");
        Computador comp1 = new Computador(marca,modelo);
    %>
        a marca foi: <h1><%=marca%></h1><br>
        o modelo foi: <%=modelo%>
        <%
        System.out.println("nome da pesssoa"+comp1.getMarca());
    }
    catch (Exception e){
        System.out.println("errro"+e.getMessage());
    }


%>
</html>
