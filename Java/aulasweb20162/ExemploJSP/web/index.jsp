<%-- 
    Document   : index
    Created on : 16/01/2010, 10:28:32
    Author     : Helder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Primeiro Exemplo JSP</h1>
     </body>
     <%
     String x = "Teste JSP";
     %>
     <%=x%>


     <% ArrayList arrayemjsp = new ArrayList();%>
     <%
     arrayemjsp.add("Texto1");
     arrayemjsp.add("Texto2");
     arrayemjsp.add("Texto3");
     //exibindo o conteudo do array
     for (int i=0; i<arrayemjsp.size(); i++){
         String aux = (String)arrayemjsp.get(i);
         %>
        <b> <%=aux%> </b>
         <%
         }
     %>




</html>
