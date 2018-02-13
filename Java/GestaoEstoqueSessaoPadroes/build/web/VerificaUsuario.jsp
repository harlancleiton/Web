<%@page import="facade.UserBllFacade"%>
<%@page import="bll.UserBll"%>
<%@page import="dto.UserDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificando usuário</title>
        <%
            System.out.println("VerificaUsuario");
            UserDto user=new UserDto();
            user.setUsuario((String) request.getParameter("usuario"));
            user.setSenha((String) request.getParameter("senha"));
            System.out.println("VerificaUsuario2 "+user.getUsuario()+ ", "+user.getSenha());
            if(UserBllFacade.novoLogin(user)){
                System.out.println("If login");
                String redirectURL="http://localhost:8080/GestaoEstoqueSessao/paginaInserir.jsp";
                response.sendRedirect(redirectURL);
                session.setAttribute("usuario",user.getUsuario());
            }
            else{
                System.out.println("Else login");
                String redirectURL="http://localhost:8080/GestaoEstoqueSessao/usuarioInvalido.jsp";
                response.sendRedirect(redirectURL);
            }
                
        %>
    </head>
    <body>
        <h1>Verificando usuario...<br/>Aguarde.</h1>
    </body>
</html>