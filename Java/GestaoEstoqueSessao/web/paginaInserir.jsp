<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="produtoBean" scope="request" class="bean.ProdutoBean"/>
<jsp:setProperty name="produtoBean" property="*"/>

<% produtoBean.execute(); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: Inserir Material JSP ::</title>
        <link rel="stylesheet" href="estilos.css" type="text/css">
        <script language='javaScript'>
            function limparDados(){<%
                if(produtoBean.getAcao()!= null && !produtoBean.getAcao().equals(""))
                    produtoBean.limparDados();
            %>}
        </script>
    </head>
    <body bgcolor="#778899">
        <%@include file="menu.html"%>
        <form name="cadProduto" action="paginaInserir.jsp" method="post">
            <table bgcolor="white" width="50%" border="0" cellspacing="0" cellpadding="2" align="center">
            <tr><td align=right class="title" colspan=2>.: <b>Tela Inserir</b> :.</td></tr>
            <tr>
                <td align=right class="right" width="30%"><b>Codigo</b>:</td>
                <td class="default1"><input name="codigo" type=text class="textbox" id="codigo" value="<jsp:getProperty name='produtoBean' property='codigo'/>" size=30 maxlength="50"></td>
            </tr>
            <tr>
                <td align=right class="right" width="30%"><b>Descrição</b>:</td>
                <td class="default1"><input name="descricao" type=text class="textbox" id="descricao" value="<jsp:getProperty name='produtoBean' property='descricao'/>" size=30 maxlength="50">
            </td>
            <tr>
                <td align=right class="right" width="30%"><b>Preço</b>:</td>
                <td class="default1"><input name="preco" type=text class="textbox" id="preco" value="<jsp:getProperty name='produtoBean' property='preco'/>" size=30 maxlength="50"></td>
            </tr>
            <tr>
                <td align=right class="right" width="30%"><b>Observacoes</b>: </td>
                <td class="default1"><input name="observacao" type="text" class="textbox" id="observacao" value="<jsp:getProperty name='produtoBean' property='observacao'/>" size=30 maxlength="50"></td>
            </tr>
            <tr>
                <td class="right"></td>
                <td class="default1">
                    <input type="submit" name="acao" value="Adicionar" class="button">
                    <input type="reset" name="limpar" value="Limpar Campos" class="button">
                </td>
            </tr>
            </table>
        </form>
    </body>
</html>