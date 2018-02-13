<%-- 
    Document   : conexao
    Created on : 01/09/2016, 20:00:11
    Author     : Aluno
--%>

<%@page import="java.sql.Connection"%>
<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%!

Connection con = null;
String driverName = "org.apache.derby.jdbc.ClientDriver";
String serverURLBase = "jdbc:derby://localhost:1527/DesenvolvimentoWeb";


String dbName = "javadb";

%>
<%

   

    //Conecta
    try {
        Class.forName(driverName);
        con = DriverManager.getConnection(serverURLBase,"root","root");
    } catch (Exception e){
       System.out.println("erro no banco"+e.getMessage());
    }

%>