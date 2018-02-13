<%-- 
    Document   : VerificaUsuario
    Created on : 03/06/2012, 10:54:04
    Author     : helder
--%>

<%@page import="business.UserBll"%>
<%@page import="modelo.UserDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            System.out.println("VerificaUsuario");
            UserDto user=new UserDto();
            user.setUsuario((String) request.getParameter("usuario"));
            user.setSenha((String) request.getParameter("senha"));
            System.out.println("VerificaUsuario2 "+user.getUsuario()+ ", "+user.getSenha());
            //if (usuario.equals("aluno") && senha.equals("estacio")){
            if(UserBll.novoLogin(user)){
                System.out.println("If login");
            String redirectURL = "http://localhost:8080/CampeonatoWebapplicationComSession/FormCadastrarTime.jsp";
            response.sendRedirect(redirectURL);
            session.setAttribute("usuario",user.getUsuario());
        }
        %>


    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
