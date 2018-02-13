<%@ page import = "java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%!

Connection con = null;
String driverName = "org.postgresql.Driver";
String serverURLBase = "jdbc:postgresql://127.0.0.1:5432/postgres";


String dbName = "postgres";

%>
<%

   

    //Conecta
    try {
        Class.forName(driverName);
        con = DriverManager.getConnection(serverURLBase,"postgres","123456");
    } catch (Exception e){
       System.out.println("erro no banco"+e.getMessage());
    }

%>
