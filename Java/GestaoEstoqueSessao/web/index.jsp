<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body align="center">
        <form id="login" name="login" method="post" action="VerificaUsuario.jsp">
            <img src="http://4.bp.blogspot.com/-vy4EuaNfQ8A/TftT4wsHfbI/AAAAAAAAARo/7espbSSGm-c/s250/area_restrita.gif"/>
            <table width="200" border="0" align="center">
                <tr>   
                    <td>Usuario:</td>   
                    <td><input type="text" name="usuario" id="usuario"></td>
                </tr>
                <tr>
                    <td>Senha:</td>   
                    <td><input type="password" name="senha" id="senha"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="button" id="button" value="Logar"></td>
                    <td><input type="reset" name="button" id="button" value="Limpar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>