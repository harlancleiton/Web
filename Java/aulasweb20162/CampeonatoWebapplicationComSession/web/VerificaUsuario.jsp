<%-- 
    Document   : VerificaUsuario
    Created on : 03/06/2012, 10:54:04
    Author     : helder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%int x=1;
        if (x==1){
            String redirectURL = "http://localhost:8080/CampeonatoWebapplicationComSession/FormCadastrarTime.jsp";
            response.sendRedirect(redirectURL);
            session.setAttribute("usuario","Helder");
        }
        %>


    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
